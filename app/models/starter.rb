class Starter < ActiveRecord::Base
  has_many :dishes, foreign_key: :course_id
end
