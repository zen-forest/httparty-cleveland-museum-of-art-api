require 'httparty'

response = HTTParty.get('https://openaccess-api.clevelandart.org/api/creators/?name=Monet')

# puts response.body, response.code, response.message, response.headers.inspect

class Cma
  include HTTParty
  base_uri 'https://openaccess-api.clevelandart.org/api'
  
  # def initialize
  #   puts self.class.get('/creators/')
  #   # @options = {query: {site: service, page: page}}
  # end

  def creators
    puts self.class.get('/creators/')
  end

  # def monet
  #   self.class.get('/creators/?name=Monet', @options)
  # end
  # def creators
  #   self.class.get('/creators/')
  # end

end

cleveland_museum_of_art = Cma.new
puts cleveland_museum_of_art.creators


