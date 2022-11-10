require 'httparty'

class Cma
  include HTTParty
  base_uri 'https://openaccess-api.clevelandart.org/api'

  def creators(artist)
    @artist = artist.to_s
    uri = "/creators/?name=#{artist}"
    puts self.class.get(uri)
    # puts self.class.get('/creators/?name=#{artist}')
  end

  def creator_nationality(nationality, limit)
    @nationality = nationality.to_s
    @limit = limit
    uri = "/creators/?nationality=#{nationality}&limit=#{limit}"
    puts self.class.get(uri)
    # puts self.class.get('/creators/?name=#{artist}')
  end

end

cleveland_museum_of_art = Cma.new
cleveland_museum_of_art.creator_nationality("American", 4)
# puts cleveland_museum_of_art.creators("monet")


