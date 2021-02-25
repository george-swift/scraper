#!/usr/bin/env ruby
require_relative '../lib/scrape_farfetch'

designers = Designers.new
brand = designers.brand_names
product = designers.description
price = designers.price