class Singer < Artist
  has_many :songs
  include Sluggable
  include Publish
  extend Publish
end
