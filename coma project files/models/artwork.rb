require_relative('../db/sql_runner')
require_relative('artist.rb')

class Artwork

  attr_accessor( :title, :year, :category, :image, :info, :artist_id )
  attr_reader( :id )

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @year = options['year'].to_i
    @category = options['category']
    @image = options['image']
    @info = options['info']
    @artist_id = options['artist_id'].to_i
  end

  def save()
    sql = "INSERT INTO artworks
    (title, year, category, image, info, artist_id)
    VALUES
    ($1, $2, $3, $4, $5, $6)
    RETURNING id"
    values = [@title, @year, @category, @image, @info, @artist_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE artworks SET
    (title, year, category, image, info, artist_id) = ($1, $2, $3, $4, $5, $6)
    WHERE id = $7"
    values = [@title, @year, @category, @image, @info, @artist_id, @id]
    SqlRunner.run( sql, values )
  end

  def artist()
    artist = Artist.find(@artist_id)
    return artist
  end

  def self.delete(id)
    sql = "DELETE FROM artworks
    WHERE id = $1"
    values = [id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = " SELECT * FROM artworks"
    results = SqlRunner.run(sql)
    return results.map { |result| Artwork.new(result)}
  end

  def self.find(id)
    sql = "SELECT * FROM artworks
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Artwork.new( results.first )
  end

  def self.delete_all()
    sql = "DELETE FROM artworks"
    SqlRunner.run(sql)
  end

end
