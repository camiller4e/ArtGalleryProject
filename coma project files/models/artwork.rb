require_relative('../db/sql_runner')

class Artwork

  attr_accessor( :title, :year, :category, :image, :artist_id )
  attr_reader( :id )

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @year = options['year'].to_i
    @category = options['category']
    @image = options['image']
    @artist_id = options['artist_id'].to_i
  end

  def save()
    sql = "INSERT INTO artworks
    (title, year, category, image, artist_id)
    VALUES
    ($1, $2, $3, $4, $5)
    RETURNING id"
    values = [@title, @year, @category, @image, @artist_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE artworks SET
    (title, year, category, image, artist_id) = ($1, $2, $3, $4, $5)
    WHERE id = $6"
    values = [@title, @year, @category, @image, @artist_id, @id]
    SqlRunner.run( sql, values )
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
