#!/usr/bin/env ruby
require 'json'

def count_user_ids(path)
    # Read and parse the JSON file
    begin
        file_content = File.read(path)
        data = JSON.parse(file_content)
        
        # Count unique user IDs
        if data.is_a?(Array)
            # If the JSON is an array of objects
            user_ids = data.map { |item| item['userId'] }.compact.uniq
            return user_ids.length
        elsif data.is_a?(Hash)
            # If the JSON is a single object
            return data['userId'] ? 1 : 0
        else
            return 0
        end
    rescue JSON::ParserError => e
        puts "Error parsing JSON file: #{e.message}"
        return 0
    rescue Errno::ENOENT => e
        puts "Error: File not found - #{e.message}"
        return 0
    end
end

# Example usage
# puts count_user_ids('path/to/your/file.json') 