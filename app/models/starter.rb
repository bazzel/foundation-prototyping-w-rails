class Starter < ActiveRecord::Base
  has_many :dishes, as: :dishable
end