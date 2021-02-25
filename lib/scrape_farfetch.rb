require 'HTTParty'
require 'Nokogiri'

class Designers
  attr_accessor :parse_sneakers

  def initialize
    url = HTTParty.get('https://www.farfetch.com/ng/shopping/men/trainers-2/items.aspx')
    @parse_sneakers = Nokogiri::HTML(url)
  end
end