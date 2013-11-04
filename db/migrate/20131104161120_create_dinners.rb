class CreateDinners < ActiveRecord::Migration
  def change
    create_table :dinners do |t|
      t.string :venue
      t.datetime :starts_at
      t.string :address
      t.string :lat
      t.string :lng

      t.timestamps
    end
  end
end
