require_relative("../models/artist")
require_relative("../models/artwork")
require("pry-byebug")

Artwork.delete_all()
Artist.delete_all()

#ARTISTS#

artist1 = Artist.new({
  "name" => "Alphonse Mucha",
  "style" => "Art Nouveau",
  "image" => "/images/artists/Alfons-Mucha.jpg",
  "bio" => "Alfons Maria Mucha, known as Alphonse Mucha, was a Czech Art Nouveau painter and decorative artist, known best for his distinct style. He produced many paintings, illustrations, advertisements, postcards, and designs. One of the largest collections of Mucha's works is in the possession of former world no. 1 professional tennis player Ivan Lendl, who started collecting his works upon meeting Mucha's son, Jiří Mucha, in 1982. His collection was exhibited publicly for the first time in 2013 in Prague."
  })
artist1.save()

artist2 = Artist.new({
  "name" => "Virginia Frances Sterrett",
  "style" => "Art Nouveau",
  "image" => "/images/artists/sterrett.jpg",
  "bio" => ""
  })
artist2.save()

artist3 = Artist.new({
  "name" => "Jules Cheret",
  "style" => "Art Nouveau",
  "image" => "/images/artists/cheret1.jpg",
  "bio" => ""
  })
artist3.save()

artist4 = Artist.new({
  "name" => "Eugene Grasset",
  "style" => "Art Nouveau",
  "image" => "/images/artists/grasset2.jpg",
  "bio" => ""
  })
artist4.save()


#ARTWORKS#

artwork1 = Artwork.new({
  "title" => "Cycles Perfecta",
  "year" => "1902",
  "category" => "Portrait",
  "image" => "/images/artworks/Cycles_Perfecta_med.jpg",
  "artist_id" => artist1.id
  })
artwork1.save()

artwork2 = Artwork.new({
    "title" => "Job",
    "year" => "1896",
    "category" => "Street Poster Art",
    "image" => "/images/artworks/job_med.jpg",
    "artist_id" => artist1.id
    })
artwork2.save()

artwork3 = Artwork.new({
    "title" => "Quinquina Dubonnet",
    "year" => "1895",
    "category" => "Street Poster Art",
    "image" => "/images/artworks/quinquina_med.jpg",
    "artist_id" => artist3.id
    })
artwork3.save()

artwork4 = Artwork.new({
    "title" => "Grafton Gallery",
    "year" => "1897",
    "category" => "History Painting",
    "image" => "/images/artworks/grafton_med.jpg",
    "artist_id" => artist4.id
    })
artwork4.save()

artwork5 = Artwork.new({
    "title" => "Rosalie saw before her eyes a tree of marvelous beauty",
    "year" => "1920",
    "category" => "Illustration",
    "image" => "/images/artworks/rosalie_med.jpg",
    "artist_id" => artist2.id
    })
artwork5.save()

artwork6 = Artwork.new({
    "title" => "Arabian Nights",
    "year" => "1928",
    "category" => "Book",
    "image" => "/images/artworks/arabian_med.jpg",
    "artist_id" => artist2.id
    })
artwork6.save()


binding.pry
nil
