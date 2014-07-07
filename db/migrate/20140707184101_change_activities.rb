class ChangeActivities < ActiveRecord::Migration
  def change
  	  add_column :activities, :story_id, :integer
  end
end
