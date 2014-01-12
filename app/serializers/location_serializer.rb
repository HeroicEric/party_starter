class LocationSerializer < ActiveModel::Serializer
  embed :id

  attributes :id, :name, :street_address, :city, :state, :zip_code
end
