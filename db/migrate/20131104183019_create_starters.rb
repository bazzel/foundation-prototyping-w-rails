class CreateStarters < ActiveRecord::Migration
  def change
    create_table :starters do |t|
      t.string :name
      t.references :dinner

      t.timestamps
    end
  end
end
