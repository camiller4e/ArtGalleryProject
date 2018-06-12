require_relative('../db/sql_runner')

class Artist

  attr_accessor :name, :style, :image
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @style = options['style']
    @image = options['image']
  end

  def save()
    sql = "INSERT INTO artists
    (name, style, image)
    VALUES
    ($1, $2, $3)
    RETURNING id"
    values = [@name, @style, @image]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE artworks SET
    (name, style) = ($1, $2, $3)
    WHERE id = $4"
    values = [@name, @style, @image, @id]
    SqlRunner.run(sql, values)
  end

  def self.delete(id)
    sql = "DELETE FROM artists
    WHERE id = $1"
    values = [id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = " SELECT * FROM artists"
    results = SqlRunner.run(sql)
    return results.map { |result| Artist.new(result)}
  end

  def self.find(id)
    sql = "SELECT * FROM artists
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Artist.new( results.first )
  end

  def self.delete_all
    sql = "DELETE FROM artists"
    SqlRunner.run(sql)
  end

end
