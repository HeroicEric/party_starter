class EventSerializer < ActiveModel::Serializer
  embed :id

  attributes :id, :title, :location, :theme, :rsvp_min
end
