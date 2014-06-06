require "csv"

class ArtistInfo
  def initialize
    @file_name = 'music.csv'
    @artist = {}
  end

  def get_hash
    CSV.foreach(@file_name, headers: true) do |row|
      if @artist.has_key?(row["Artist"])
        @artist[row["Artist"]] << row["Name"]
      else
        @artist[row["Artist"]] = []
      end
    end
    @artist
  end
end


