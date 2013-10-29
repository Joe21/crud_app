class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goods do |t|
      t.string :name
      t.integer :store_id 

      t.timestamps
    end
  end
end
