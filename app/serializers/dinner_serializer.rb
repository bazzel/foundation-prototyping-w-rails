class DinnerSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id, :venue, :starts_at, :address, :lat, :lng

  has_one :starter
  has_one :main_course
  has_one :dessert
end
