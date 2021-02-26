#!/usr/bin/env ruby
# rubocop:disable Metrics/BlockLength

require_relative '../lib/scrape_farfetch'
require 'colorize'

def start_scrape
  designers = Designers.new
  brand = designers.brand_names
  product = designers.description
  price = designers.price
  puts "\n"
  puts 'Hello, window shopper! I am Jarvis'
  puts "\n"
  sleep(1)
  puts 'How many collections do you want to check out today?'
  puts "\n"
  puts '⚠️  You can only say in numbers'.red
  puts "\n"
  collections = gets.chomp.to_i
  (0...collections).each do |index|
    puts "- - - Men's Designer Sneakers | Search Results: #{index + 1} - - -".white
    puts "\n"
    puts "Brand: #{brand[index]}".green
    puts "Description: #{product[index].capitalize}".green
    puts "Price: #{price[index]}".yellow
    puts "\n"
  end
end
# rubocop:disable Metrics/BlockLength

start_scrape
