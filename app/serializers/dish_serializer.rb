class DishSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id, :name
  has_many :consumers, include: true
end
