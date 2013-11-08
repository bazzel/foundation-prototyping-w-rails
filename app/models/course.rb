class Course < ActiveRecord::Base
  self.abstract_class = true
  has_many :dishes, as: :dishable
end
