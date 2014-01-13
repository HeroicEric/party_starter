class EventSerializer < ActiveModel::Serializer
  embed :id

  has_one :location

  attributes :id, :title, :theme, :rsvp_min, :when
end
