require_relative('../db/sql_runner')

class Artist

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO artists (name) VALUES ('#{@name}') RETURNING *"
    returned_array = SqlRunner.run(sql)
    artist_hash = returned_array.first
    id_string = artist_hash['id']
    @id = id_string.to_i
  end
  
end