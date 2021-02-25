#!/usr/bin/env ruby
require_relative '../lib/scrape_farfetch'
require 'colorize'

designers = Designers.new
brand = designers.brand_names
product = designers.description
price = designers.price

(0...30).each do |index|
  puts "\n"
  puts "- - - Men's Designer Sneakers | Search Results: #{index + 1} - - -"
  puts "\n"
  puts "Brand: #{brand[index]}"
  puts "Description: #{product[index].capitalize}"
  puts "Price: #{price[index]}"
  puts "\n"
end