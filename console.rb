require('pry')
require_relative('models/artist.rb')
require_relative('models/album.rb')

Album.delete_all()
Artist.delete_all()


artist1 = Artist.new({
  'name' => 'Prince'
  })
  artist1.save()

album1 = Album.new({
  'title' => 'Sign of the times',
  'genre' => 'Funk',
  'artist_id' => "#{artist1.id}"
  })
album1.save()

album2 = Album.new({
  'title' => 'Purple Rain',
  'genre' => 'Funk',
  'artist_id' => "#{artist1.id}"
  })
album2.save()


artist2 = Artist.new({
  'name' => 'Ebony Bones'
  })
  artist2.save()

album3 = Album.new({
  'title' => 'Bones of my Bones',
  'genre' => 'afrobeat',
  'artist_id' => "#{artist2.id}"
  })
album3.save()


artist1.name = "Steven"
artist1.update()

album2.title = "Stevens Greatest Hits"
album2.update()

album1.delete()
artist2.delete()


binding.pry
nil
