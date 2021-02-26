require 'httparty'
require 'Nokogiri'

class Designers
  attr_accessor :parse_sneakers

  def initialize
    url = HTTParty.get('https://www.farfetch.com/ng/shopping/men/trainers-2/items.aspx')
    @parse_sneakers = Nokogiri::HTML(url)
  end

  def brand_names
    product_grid.css('._346238').children.map(&:text).compact
  end

  def description
    product_grid.css('._d85b45').children.map(&:text).compact
  end

  def price
    product_grid.css('._6356bb').css('span').children.map(&:text).compact
  end

  private

  def product_grid
    parse_sneakers.css('._f185dc').css('._bab25b')
  end
end
