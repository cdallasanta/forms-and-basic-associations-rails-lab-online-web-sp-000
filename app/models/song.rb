require 'pry'

class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def genre_name=(genre_name)
    self.genre = Genre.find_or_create_by(name: genre_name)
  end

  def genre_name
<<<<<<< HEAD
    self.genre ? self.genre.name : nil
=======
    self.genre.name ? self.genre : nil
>>>>>>> 28d5c80af3049314dbf97a6e9d34a7a9b759981d
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by(name: artist_name)
  end

  def artist_name
<<<<<<< HEAD
    self.artist ? self.artist.name : nil
=======
    self.artist.name ? self.artist : nil
>>>>>>> 28d5c80af3049314dbf97a6e9d34a7a9b759981d
  end

  def note_contents
    contents = []
    self.notes.each do |note|
      if !note.content.blank?
        contents << note.content
      end
    end
    contents
  end

  def note_contents=(new_content)
<<<<<<< HEAD
    new_content.each do |new_note|
      self.notes << Note.create(content: new_note)
    end
=======
    binding.pry
    self.notes << Note.create(content: new_content)
>>>>>>> 28d5c80af3049314dbf97a6e9d34a7a9b759981d
  end
end
