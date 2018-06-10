require("minitest/autorun")
require("minitest/rg")

require_relative("../artwork")
require_relative("../artist")

class ArtworkTest<MiniTest::Test

  def setup
    @artist1 = Artist.new({
      "name" => "Alphonse Mucha",
      "style" => "Art Nouveau"
      })

    @artwork1 = Artwork.new({
      "title" => "Cycles Perfecta",
      "year" => "1902",
      "category" => "Portrait",
      "artist_id" => @artist1.id
      })
  end

  def test_artwork_has_title
    assert_equal("Cycles Perfecta", @artwork1.title)
  end

  def test_artwork_has_year
    assert_equal(1902, @artwork1.year)
  end

  def test_artwork_has_category
    assert_equal("Portrait", @artwork1.category)
  end

  # def test_artwork_has_artist_id
  #   assert_equal(@artist1.id, @artwork1.artist_id)
  # end

end
