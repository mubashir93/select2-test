class Post < ActiveRecord::Base
  #before_filter :setGenres
  class Genres
      def initialize id, name
        @id = id
        @name = name
      end

      def id
        @id
      end

      def name
        @name
      end
  end
  def self.getGenres
    setGenres
    @@a
  end
  private
    def self.setGenres
      @@a = []
      @@a.push(Genres.new(1,:comedy))
      @@a.push(Genres.new(2,:horror))
      @@a.push(Genres.new(3,:action))
    end
end
