require_relative('../db/sql_runner')

class Artwork

  attr_reader( :title, :year, :category, :id, :artist_id )

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @year = options['year'].to_i
    @category = options['category']
    @artist_id = options['artist_id'].to_i
  end

  def save()
    sql = "INSERT INTO artworks
    (title, year, category, artist_id)
    VALUES
    ($1, $2, $3, $4)
    RETURNING id"
    values = [@title, @year, @category, @artist_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE artworks SET
    (title, year, category, artist_id) = ($1, $2, $3, $4)
    WHERE id = $5"
    values = [@title, @year, @category, @artist_id]
    SqlRunner.run( sql, values )
  end

  def delete()
    sql = "DELETE FROM artworks
    WHERE id = $1"
    values = [@id]
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
