class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.integer :phone_number
    	t.integer :age
    	t.text :time

      t.timestamps
    end
  end
end
