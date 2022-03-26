class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :Post do |t|
      t.references :User, null: false, foriegn_key: true, index:true
      t.string :Title
      t.string :Text
      t.timestamps
      t.integer :Comments_Counter ,default: 0,null: false
      t.integer :Likes_Counter ,default: 0,null: false
    end
  end
end

