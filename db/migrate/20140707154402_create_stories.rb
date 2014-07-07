class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
    	t.text :category
    	t.text :title
    	t.integer :chapter
    	t.text :content

      t.timestamps
    end
  end
end
