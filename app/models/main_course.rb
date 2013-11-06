class MainCourse < ActiveRecord::Base
  has_many :dishes, as: :dishable
end
