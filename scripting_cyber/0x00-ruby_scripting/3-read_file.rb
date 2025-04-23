#!/usr/bin/env ruby
require 'json'

def count_user_ids(path)
  # Read and parse the JSON file
  data = JSON.parse(File.read(path))

  # Count occurrences of each userId
  counts = Hash.new(0)
  data.each do |item|
    user_id = item["userId"]
    counts[user_id] += 1
  end

  # Sort and print the counts
  counts.sort.each do |user_id, count|
    puts "#{user_id}: #{count}"
  end
end
