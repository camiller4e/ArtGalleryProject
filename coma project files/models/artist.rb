require_relative('../db/sql_runner')
require_relative('artwork.rb')

class Artist

  attr_accessor :name, :style, :image, :bio
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @style = options['style']
    @image = options['image']
    @bio = options['bio']
  end

  def save()
    sql = "INSERT INTO artists
    (name, style, image, bio)
    VALUES
    ($1, $2, $3, $4)
    RETURNING id"
    values = [@name, @style, @image, @bio]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE artworks SET
    (name, style) = ($1, $2, $3, $4)
    WHERE id = $5"
    values = [@name, @style, @image, @bio, @id]
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
