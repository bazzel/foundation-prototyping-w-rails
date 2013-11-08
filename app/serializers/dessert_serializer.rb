class DessertSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :name

  has_many :dishes
end
