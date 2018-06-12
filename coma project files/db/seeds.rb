require_relative("../models/artist")
require_relative("../models/artwork")
require("pry-byebug")

Artwork.delete_all()
Artist.delete_all()

#ARTISTS#

artist1 = Artist.new({
  "name" => "Alphons Mucha",
  "style" => "Art Nouveau",
  "image" => "/images/artists/Alfons-Mucha.jpg"
  })
artist1.save()

artist2 = Artist.new({
  "name" => "Virginia Frances Sterrett",
  "style" => "Art Nouveau",
  "image" => "/images/artists/sterrett.jpg"
  })
artist2.save()

artist3 = Artist.new({
  "name" => "Jules Cheret",
  "style" => "Art Nouveau",
  "image" => "/images/artists/cheret1.jpg"
  })
artist3.save()

artist4 = Artist.new({
  "name" => "Eugene Grasset",
  "style" => "Art Nouveau",
  "image" => "/images/artists/grasset2.jpg"
  })
artist4.save()


#ARTWORKS#

artwork1 = Artwork.new({
  "title" => "Cycles Perfecta",
  "year" => "1902",
  "category" => "Portrait",
  "artist_id" => artist1.id
  })
artwork1.save()

artwork2 = Artwork.new({
    "title" => "Job",
    "year" => "1896",
    "category" => "Street Poster Art",
    "artist_id" => artist1.id
    })
artwork2.save()

artwork3 = Artwork.new({
    "title" => "Quinquina Dubonnet",
    "year" => "1895",
    "category" => "Street Poster Art",
    "artist_id" => artist3.id
    })
artwork3.save()

artwork4 = Artwork.new({
    "title" => "Grafton Gallery",
    "year" => "1897",
    "category" => "History Painting",
    "artist_id" => artist4.id
    })
artwork4.save()

artwork5 = Artwork.new({
    "title" => "Rosalie saw before her eyes a tree of marvelous beauty",
    "year" => "1920",
    "category" => "Illustration",
    "artist_id" => artist2.id
    })
artwork5.save()

artwork6 = Artwork.new({
    "title" => "Arabian Nights",
    "year" => "1928",
    "category" => "Book",
    "artist_id" => artist2.id
    })
artwork6.save()


binding.pry
nil
