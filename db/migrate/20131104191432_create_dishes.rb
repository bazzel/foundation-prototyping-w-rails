class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.references :starter

      t.timestamps
    end
  end
end
