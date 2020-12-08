class TripTag
  
  include ActiveModel::Model
  attr_accessor :images, :title, :text, :name, :user_id

  with_options presence: true do
    validates :text
    validates :title
    validates :user_id
    validates :name
    validates :images
  end

  def save
    trip = Trip.create(images: images, text: text, title: title, user_id: user_id)
    tag = Tag.create(name: name).first_or_initialize
    tag.save

    TripTagRelation.create(trip_id: trip.id, tag_id: tag.id)
  end

end
