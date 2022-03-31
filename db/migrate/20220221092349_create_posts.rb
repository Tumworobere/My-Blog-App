class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foriegn_key: true, index:true
      t.string :Title
      t.string :Text
      t.timestamps
      t.integer :CommentsCounter ,default: 0,null: false
      t.integer :LikesCounter ,default: 0,null: false
    end
  end
end
