#! /usr/bin/env ruby

require 'json'

def merge_json_files(file1_path, file2_path)
  # Load and parse both JSON files
  file1_data = JSON.parse(File.read(file1_path))
  file2_data = JSON.parse(File.read(file2_path))

  # Merge both arrays
  merged_data = file1_data + file2_data

  # Count userId occurrences
  counts = Hash.new(0)
  merged_data.each do |item|
    user_id = item["userId"]
    counts[user_id] += 1
  end

  # Sort and display results
  counts.sort.each do |user_id, count|
    puts "#{user_id}: #{count}"
  end
end