class CreateConsumersDishesTable < ActiveRecord::Migration
  def change
    create_table :consumers_dishes, id: false do |t|
      t.integer :consumer_id
      t.integer :dish_id
      t.timestamps
    end
  end
end
