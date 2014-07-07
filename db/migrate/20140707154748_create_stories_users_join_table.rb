class CreateStoriesUsersJoinTable < ActiveRecord::Migration
  def change
  	create_table :stories_users, id: false do |t|
  		t.integer :story_id
  		t.integer :user_id
  	end
  end
end
