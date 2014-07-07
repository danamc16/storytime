class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
    	t.integer :age_group
    	t.text :activity_content

      t.timestamps
    end
  end
end
