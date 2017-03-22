require_relative('../db/sql_runner')
require_relative('album')

class Artist

  attr_reader :id

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

  def self.all()
    sql = "SELECT * FROM artists"
    artist_hashes = SqlRunner.run(sql)
    artist_objects = artist_hashes.map {|person| Artist.new(person)}
    return artist_objects
  end

  def albums()
    sql = "SELECT * FROM albums WHERE artist_id = #{@id}"
    artist_hashes = SqlRunner.run(sql)
    artist_objects = artist_hashes.map {|thing| Album.new(thing)}
    return artist_objects
  end

  def edit()
    sql = "UPDATE artists SET (name) = ('#{@name}') WHERE id = #{@id}"
    SqlRunner.run(sql)
  end

  # def delete()
  #   sql = "DELETE FROM artists WHERE id = #{@id}"
  #   SqlRunner.run(sql)
  # end

  def self.find(id)
    sql = "SELECT * FROM artists WHERE id = #{id}"
    result = SqlRunner.run(sql)
    artist_hash = result.first
    artist = Artist.new(artist_hash)
    return artist
  end

  def self.delete_all()
    sql = "DELETE FROM artists"
    SqlRunner.run(sql)
  end

end