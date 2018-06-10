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

  def self.delete_all
    sql = "DELETE FROM artists"
    SqlRunner.run(sql)
  end

end
