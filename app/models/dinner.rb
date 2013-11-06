class Dinner < ActiveRecord::Base
  has_one :starter
  has_one :main_course
end
