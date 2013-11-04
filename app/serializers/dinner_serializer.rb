class DinnerSerializer < ActiveModel::Serializer
  attributes :id, :venue, :starts_at, :address, :lat, :lng

  attribute :starts_at, key: 'startsAt'
end
