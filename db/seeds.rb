require_relative('../models/artist')
require_relative('../models/album')
require('pry-byebug')

Album.delete()
Artist.delete()


artist1 = Artist.new({
  "name" => "Pvris"
  })

  artist2 = Artist.new({
    "name" => "Bombay Bicycle Club"
    })

    artist1.save()
    artist2.save()

    album1 = Album.new ({
      "title" => "All We Know Of Heaven, All We Need Of Hell",
      "quantity" => "10",
      "artist_id" => artist1.id,
      "buy_price" => "8",
      "sell_price" => "15"
      })

      album2 = Album.new ({
        "title" => "So Long, See You Tomorrow",
        "quantity" => "25",
        "artist_id" => artist2.id,
        "buy_price" => "12",
        "sell_price" => "20"
        })

        album3 = Album.new({
          "title" => "White Noise",
          "quantity" => "4",
          "artist_id" => artist1.id,
          "buy_price" => "8",
          "sell_price" => "15"
          })

        album1.save()
        album2.save()
        album3.save()

        binding.pry
        nil
