class Dinner < ActiveRecord::Base
  has_one :starter
  has_one :main_course
  has_one :dessert
end
