#! /usr/bin/env ruby

require 'json'

def merge_json_files(file1_path, file2_path)
  # Lire les deux fichiers JSON
  file1_data = JSON.parse(File.read(file1_path))
  file2_data = JSON.parse(File.read(file2_path))

  # Fusionner les tableaux
  merged_data = file1_data + file2_data

  # Compter les userId
  counts = Hash.new(0)
  merged_data.each do |item|
    user_id = item["userId"]
    counts[user_id] += 1
  end

  # Afficher les résultats triés par userId
  counts.sort.each do |user_id, count|
    puts "#{user_id}: #{count}"
  end
end