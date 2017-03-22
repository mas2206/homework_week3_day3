require ('pry')
require_relative('../models/artist')

artist1 = Artist.new( {'name' => 'Eminem'} )

artist2 = Artist.new( {'name' => 'Oasis'} )

artist3 = Artist.new( {'name' => 'The Prodigy'} )

artist1.save
artist2.save
artist3.save

album1 = Album.new({
  'title' => 'The Slim Shady LP',
  'genre' => 'rap',
  'artist_id' => 
  })

album2 = Album.new({
  'title' => 'The Marshall Mathers LP',
  'genre' => 'rap',
  'artist_id' =>
  })

album3 = Album.new({
  'title' => 'Heathen Chemistry',
  'genre' => 'rock',
  'artist_id' =>
  })

album4 = Album.new({
  'title' => 'Always Outnumbered, Never Outgunned',
  'genre' => 'rock',
  'artist_id' =>
  })

binding.pry
nil