#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../lib/scrape_farfetch'
require 'colorize'

designers = Designers.new
brand = designers.brand_names
product = designers.description
price = designers.price

(0...30).each do |index|
  puts "\n"
  puts "- - - Men's Designer Sneakers | Search Results: #{index + 1} - - -".white
  puts "\n"
  puts "Brand: #{brand[index]}".green
  puts "Description: #{product[index].capitalize}".green
  puts "Price: #{price[index]}".yellow
  puts "\n"
end
