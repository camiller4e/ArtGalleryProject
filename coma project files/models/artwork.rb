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

  def self.delete_all()
    sql = "DELETE FROM artworks"
    SqlRunner.run(sql)
  end

end
