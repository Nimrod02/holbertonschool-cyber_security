# Mandatory Access Control

![DALL·E 2024-04-03 11 16 18 - Create a wide image that visually represents the concept of Mandatory Access Control in a virtual campus setting  The image should feature a digital, ](https://github.com/Nimrod02/holbertonschool-cyber_security/assets/86027619/42474898-dfe0-4e54-8b52-b2b55416463f)


## 📝 Description
The "Mandatory Access Control" (MAC) project is a comprehensive initiative focused on the implementation and understanding of MAC within Linux environments, using SELinux and AppArmor. This project covers everything from the basics of MAC, policy enforcement, user and role management, to advanced security configurations. Participants will gain practical experience in securing Linux systems through hands-on exercises that include configuring security policies, managing access controls, and troubleshooting common security issues.

## 📚 Resources
- [Introduction to Mandatory Access Control (MAC)](https://intranet.hbtn.io/rltoken/stbOwUkfkItdTPE_ikOcfA)
- [Your visual how-to guide for SELinux policy enforcement](https://intranet.hbtn.io/rltoken/oOoGfzp_9yFX-PV_qK67mg)
- [5 security technologies to know in Red Hat Enterprise Linux](https://intranet.hbtn.io/rltoken/1UsPey78rYXG0ZlG43Pcig)
- [AppArmor: An alternative to SELinux](https://intranet.hbtn.io/rltoken/CLuo9874Gb4E2Dji1YzWpg)
- [Linux Security: MAC, DAC, and RBAC](https://intranet.hbtn.io/rltoken/bCYFjICOFJh8XeHsohgcgA)

## 🛠️ Technologies and Tools Used
- **SELinux**: For enforcing strict and granular security policies.
- **AppArmor**: Offers application-centric security, providing a simpler approach to application security.
- **Kali Linux 2023.2**: The operating system used for all scripts and security tools.

## 📋 Prerequisites
- Installation of Kali Linux 2023.2.
- Basic understanding of Linux security concepts.

## 🚀 Installation and Configuration
Instructions for configuring SELinux and AppArmor can be found within the individual task descriptions in the project documentation.

## 💡 Usage
The project includes scripts for analyzing and modifying SELinux and AppArmor configurations. Each task provides specific examples on how to utilize these scripts to secure your Linux system effectively.

## ✨ Key Features
- Configuring SELinux and AppArmor to enhance system security.
- Managing SELinux policies and AppArmor profiles.
- Understanding and applying the principles of least privilege and access control.

## 📝 Task List

| Number | Task                                | Description                                                                                      |
| ------ | ----------------------------------- | ------------------------------------------------------------------------------------------------ |
| 0      | **SELinux Mode Analysis**           | Script to print the current SELinux mode.                                                        |
| 1      | **AppArmor & SELinux Status**       | Displays the status of AppArmor security profiles.                                               |
| 2      | **List SELinux Managed HTTP Ports** | Lists all ports managed by SELinux, filtering for those related to HTTP services.                |
| 3      | **Add SELinux HTTP Port**           | Adds a new SELinux managed HTTP port.                                                            |
| 4      | **List SELinux User Mappings**      | Lists all SELinux user mappings, showcasing the security context for users.                      |
| 5      | **Add SELinux Login Mapping**       | Adds a new SELinux login mapping, linking Linux login names to SELinux user identities.          |
| 6      | **List SELinux Booleans**           | Lists all SELinux booleans defined on the system.                                                |
| 7      | **Enable SELinux Email Permissions**| Sets the SELinux boolean `httpd_can_sendmail` to `on`, allowing HTTPD to send emails.            |

## 📬 Contact
- LinkedIn Profile: [Arthur Letrun](https://www.linkedin.com/in/arthur-letrun/)
