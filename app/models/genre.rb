class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    Song.count(self.id)
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    self.artists.all.collect {|artist| artist.name}
  end
end
