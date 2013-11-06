class CreateMainCourses < ActiveRecord::Migration
  def change
    create_table :main_courses do |t|
      t.string :name
      t.references :dinner

      t.timestamps
    end
  end
end
