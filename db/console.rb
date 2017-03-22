require ('pry')
require_relative('../models/artist')

Album.delete_all
Artist.delete_all

artist1 = Artist.new( {'name' => 'Eminem'} )

artist2 = Artist.new( {'name' => 'Oasis'} )

artist3 = Artist.new( {'name' => 'The Prodigy'} )

artist1.save
artist2.save
artist3.save

album1 = Album.new({
  'title' => 'The Slim Shady LP',
  'genre' => 'rap',
  'artist_id' => artist1.id
  })

album2 = Album.new({
  'title' => 'The Marshall Mathers LP',
  'genre' => 'rap',
  'artist_id' => artist1.id
  })

album3 = Album.new({
  'title' => 'Heathen Chemistry',
  'genre' => 'alternative rock',
  'artist_id' => artist2.id
  })

album4 = Album.new({
  'title' => 'Always Outnumbered, Never Outgunned',
  'genre' => 'big beat',
  'artist_id' => artist3.id
  })

album1.save
album2.save
album3.save
album4.save

binding.pry
nil