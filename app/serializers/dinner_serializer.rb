class DinnerSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id, :venue, :starts_at, :address, :lat, :lng

  attribute :starts_at, key: 'startsAt'

  has_one :starter
end
