class Artist
    attr_accessor :name, :songs
      def initialize(name)
      @name = name
      end 
      
      #get a list of all the songs from the song class 
      #self is the Artist instance 
      def songs
        Song.all.select do |song|
        song.artist = self 
      end 
      end 
      
      def add_song(song)
        # @songs << song <- we arent adding a song to the song array, we are adding a song to an artist 
        song.artist = self 
      end 
      
      def add_song_by_name(song_name)
        song_name_artist = Song.new(song_name)
        add_song(song_name_artist)
      end 
    
      def self.song_count
        # Song.all
        Song.all.count 
      end 
    end 