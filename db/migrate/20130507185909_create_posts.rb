class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :title
      t.text :body

      t.integer :postparent_id
      t.string  :postparent_type

      t.timestamps
    end

    add_index :posts, [:postparent_id, :postparent_type]
  end
end