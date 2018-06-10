require("minitest/autorun")
require("minitest/rg")

require_relative("../artist")

class ArtistTest<MiniTest::Test

  def setup
    @artist1 = Artist.new({
      "name" => "Alphonse Mucha",
      "style" => "Art Nouveau"
      })
  end

  def test_artist_has_name
    assert_equal("Alphonse Mucha", @artist1.name)
  end

  def test_artist_has_style
    assert_equal("Art Nouveau", @artist1.style)
  end

end
