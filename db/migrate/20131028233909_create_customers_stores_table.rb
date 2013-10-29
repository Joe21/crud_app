class CreateCustomersStoresTable < ActiveRecord::Migration
  def change
  	create_table :customers_stores, id: false do |t|
  		t.integer :customer_id
  		t.integer :store_id
  	end
  end
end
