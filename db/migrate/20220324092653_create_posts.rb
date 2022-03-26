class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.datetime :updated_at
      t.datetime :created_at
      t.integer :comments_counter
      t.integer :likes_counter
    end
  end
end
