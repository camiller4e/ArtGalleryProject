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
  "bio" => "Virginia Frances Sterrett (1900–1931) was an American artist and illustrator. She received her first commission at the age of 19 (shortly after she was diagnosed with tuberculosis) from the Penn Publishing Company to illustrate Old French Fairy Tales (1920), a collection of works from the 19th-century French author, Comtesse de Ségur (Sophie Fedorovna Rostopchine).

A year after the publication of Old French Fairy Tales, a new title including commissioned works from Sterrett was presented by the Penn Publishing Company—Tanglewood Tales (1921). From 1923, in failing health, Sterrett was able to work on projects for short periods of time only and as a result, she was able to complete just one further commission prior to her death—her own interpretation of Arabian Nights (1928).

Her best-known work is the suite of illustrations for Arabian Nights (1928). She died of tuberculosis.

The comments of the St Louis Post-Dispatch in the supplement published following Sterrett's death (published 5 July 1931) pay fitting tribute to her life and work:

'Her achievement was beauty, a delicate, fantastic beauty, created with brush and pencil. Almost unschooled in art, her life spent in prosaic places of the West and Middle West, she made pictures of haunting loveliness, suggesting Oriental lands she never saw and magical realms no one ever knew except in the dreams of childhood'

'Perhaps it was the hardships of her own life that gave the young artist's work its fanciful quality. In the imaginative scenes she set down on paper she must have escaped from the harsh actualities of existence.''"
  })
artist2.save()

artist3 = Artist.new({
  "name" => "Jules Chéret",
  "style" => "Art Nouveau",
  "image" => "/images/artists/cheret1.jpg",
  "bio" => "Jules Chéret was a French painter and lithographer who became a master of Belle Époque poster art. He has been called the father of the modern poster. Born in Paris to a poor but creative family of artisans, Chéret had a very limited education. At age thirteen, he began a three-year apprenticeship with a lithographer and then his interest in painting led him to take an art course at the École Nationale de Dessin. Like most other fledgling artists, Chéret studied the techniques of various artists, past and present, by visiting Paris museums. Born in Paris to a poor but creative family of artisans, Chéret had a very limited education. At age thirteen, he began a three-year apprenticeship with a lithographer and then his interest in painting led him to take an art course at the École Nationale de Dessin. Like most other fledgling artists, Chéret studied the techniques of various artists, past and present, by visiting Paris museums.

From 1859 to 1866, he was trained in lithography in London, England, where he was strongly influenced by the British approach to poster design and printing. On returning to France, Chéret created vivid poster ads for the cabarets, music halls, and theaters such as the Eldorado, the Olympia, the Folies Bergère, Théâtre de l'Opéra, the Alcazar d'Été and the Moulin Rouge. He created posters and illustrations for the satirical weekly Le Courrier français. In his old age Chéret retired to the pleasant climate of the French Riviera at Nice. He died in 1932 at the age of ninety-six and was interred in the Cimetière Saint-Vincent in the Montmartre quarter of Paris.

He was awarded the Légion d'honneur by the French Government in 1890 for his outstanding contributions to the graphic arts. Although his paintings earned him a certain respect, it was his work creating advertising posters, taken on just to pay his bills but eventually his dedication, for which he is remembered today.[2]

In 1933 he was honoured with a posthumous exhibition of his work at the prestigious Salon d'Automne in Paris. Over the years, Chéret's posters became much sought after by collectors from around the world."
  })
artist3.save()

artist4 = Artist.new({
  "name" => "Eugène Grasset",
  "style" => "Art Nouveau",
  "image" => "/images/artists/grasset2.jpg",
  "bio" => "Eugène Samuel Grasset was a Franco-Swiss decorative artist who worked in Paris, France in a variety of creative design fields during the Belle Époque. He is considered a pioneer in Art Nouveau design. Grasset was born in Lausanne, Switzerland, his birth year is sometimes stated as 1841. He was raised in an artistic environment as the son of a cabinet designer/maker and sculptor. He studied drawing under Francois-Louis David Bocion (1828–1890) and in 1861 went to Zürich to study architecture. After completing his education, he visited Egypt, an experience that would later be reflected in a number of his poster designs. He became an admirer of Japanese art, which influenced some of his designs. Between 1869 and 1870, Grasset worked as a painter and sculptor in Lausanne. He moved to Paris in 1871 where he designed furniture, fabrics and tapestries as well as ceramics and jewelry. His fine art decorative pieces were crafted from ivory, gold and other precious materials in unique combinations and his creations are considered a cornerstone of Art Nouveau motifs and patterns. In 1877 Eugène Grasset turned to graphic design, producing income-generating products such as postcards and eventually postage stamps for both France and Switzerland. However, it was poster art that quickly became his forte. Some of his works became part of the Maîtres de l'Affiche including his lithograph, Jeanne d'Arc Sarah Bernhardt. In 1890, he designed the 'Semeuse who spreads seeds of dandelion' logo used by the dictionary publishers, Éditions Larousse. At the Universal Exhibition of 1900 in Paris, the G. Peignot et Fils typefoundry, introduced the 'Grasset' typeface, an Italic design Eugène Grasset created in 1898 for use on some of his posters. Eugène Grasset died in 1917 in Sceaux in the Hauts-de-Seine département, southwest of Paris."
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
