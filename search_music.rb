require "./artist_info.rb"

class Search
  def initialize(artist_hash)
    @artist_hash = artist_hash
    main
  end

  def main
    while true
      @artist = query_artist
      display_message
      display_songs
    end
  end


  def query_artist
    puts "Query"
    gets.chomp
    
  end

  def display_message

    message = "*  Songs by #{@artist}  *"
    message_line ="*"  * message.length
    puts message_line
    puts message
    puts message_line
  end

  def display_songs
    puts @artist_hash[@artist]
    puts ""
  end

end


library = ArtistInfo.new
Search.new(library.get_hash)


