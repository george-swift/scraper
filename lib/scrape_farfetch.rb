require 'HTTParty'
require 'Nokogiri'

class Designers
  attr_accessor :parse_sneakers

  def initialize
    url = HTTParty.get('https://www.farfetch.com/ng/shopping/men/trainers-2/items.aspx')
    @parse_sneakers = Nokogiri::HTML(url)
  end

  private

  def product_grid
    parse_sneakers.css('._f185dc').css('._bab25b')
  end
end