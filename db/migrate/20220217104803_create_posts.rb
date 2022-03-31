class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :Post do |t|
      t.references :author, foreign_key: { to_table: 'users' }
      t.string :title
      t.string :text
      t.timestamps
      t.integer :comments_counter ,default: 0,null: false
      t.integer :likes_counter ,default: 0,null: false
    end
  end
end

