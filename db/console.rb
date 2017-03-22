require ('pry')
require_relative('../models/artist')
require_relative('../models/album')

Album.delete_all
Artist.delete_all

artist1 = Artist.new( {'name' => 'Eminem'} )
artist1.save

artist2 = Artist.new( {'name' => 'Oasis'} )
artist2.save

artist3 = Artist.new( {'name' => 'The Prodigy'} )
artist3.save

album1 = Album.new({
  'title' => 'The Slim Shady LP',
  'genre' => 'rap',
  'artist_id' => artist1.id
  })
album1.save

album2 = Album.new({
  'title' => 'The Marshall Mathers LP',
  'genre' => 'rap',
  'artist_id' => artist1.id
  })
album2.save

album3 = Album.new({
  'title' => 'Heathen Chemistry',
  'genre' => 'alternative rock',
  'artist_id' => artist2.id
  })
album3.save

album4 = Album.new({
  'title' => 'Always Outnumbered, Never Outgunned',
  'genre' => 'big beat',
  'artist_id' => artist3.id
  })
album4.save

binding.pry
nil