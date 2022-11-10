require 'httparty'

class Cma
  include HTTParty
  base_uri 'https://openaccess-api.clevelandart.org/api'

  def creators(artist)
    @artist = artist
    uri = "/creators/?name=#{artist}"
    puts self.class.get(uri)
    # puts self.class.get('/creators/?name=#{artist}')
  end

end

cleveland_museum_of_art = Cma.new
puts cleveland_museum_of_art.creators("monet")


