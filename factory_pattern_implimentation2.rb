class Imageable
  def self.create(image_location, image_id) 
    case image_location
    when :gallery
      GalleryImage.new(image_id)
    when :wall
      WallImage.new(image_id)
    when :status
      StatusImage.new(image_id)
    end
  end
end

class GalleryImage < Imageable
  def initialize(image_id)
    @id = image_id
    @height = 1000
    @width = 1000
  end
end

class WallImage < Imageable
  def initialize(image_id)
    @id = image_id
    @height = 350
    @width = 400
  end
end

class StatusImage < Imageable
  def initialize(image_id)
    @id = image_id
    @height = 100
    @width = 200
  end
end

Imageable.create(:status, 5)
