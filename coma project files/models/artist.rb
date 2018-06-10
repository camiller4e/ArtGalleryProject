require_relative('../db/sql_runner')

class Artist

  attr_reader( :name, :style, :id )

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @style = options['style']
  end

  def save()
    sql = "INSERT INTO artists
    (name, style)
    VALUES
    ($1, $2)
    RETURNING id"
    values = [@name, @style]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE artworks SET
    (name, style) = ($1, $2)
    WHERE id = $3"
    values = [@name, @style, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM artists
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = " SELECT * FROM artists"
    results = SqlRunner.run(sql, values)
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
