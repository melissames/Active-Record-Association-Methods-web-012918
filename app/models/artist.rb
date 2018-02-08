class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    self.genres.first
  end

  def song_count
    Song.count(self.id)
  end

  def genre_count
    Genre.count(self.id)
  end
end
