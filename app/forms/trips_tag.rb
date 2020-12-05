class TripsTag

  include ActiveModel::Model
  #保存したい各テーブルのカラム名全てについてゲッターとセッターを定義することで、
  #このFormオブジェクトのインスタンスを生成した際にform_withの引数として利用できる
  attr_accessor :images, :title, :text, :name, :user_id

  with_options presence: true do
    validates :images
    validates :text
    validates :title
    validates :user_id
  end

  def save
    trip = Trip.create(images: images, text: text, title: title, user_id: user_id)
    tag = Tag.create(name: name)

    TriptTagRelation.create(trip_id: trip.id, tag_id: tag.id)
  end

end
