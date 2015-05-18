class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	t.string :name
    	t.string :category
    	t.attachment :image
    	t.text   :description
    	t.string :link
    end

    add_index :projects, :name
    add_index :projects, :category
  end
end
