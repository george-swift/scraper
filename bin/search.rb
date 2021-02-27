#!/usr/bin/env ruby

require_relative '../lib/scrape_farfetch'
require 'colorize'

designers = Designers.new
brand = designers.brand_names
product = designers.description
price = designers.price
puts "\nHello, window shopper! 👋🏽 I am Jarvis \n\n"
sleep(1)
puts "How many collections do you want to check out today? \n"
puts "⚠️  You can only say in numbers \n".red
collections = gets.chomp.to_i
(0...collections).each do |index|
  puts "- - - Men's Designer Sneakers | Search Results: #{index + 1} - - -".white
  puts "\nBrand: #{brand[index]}".green
  puts "Description: #{product[index].capitalize}".green
  puts "Price: #{price[index]}\n".yellow
end
