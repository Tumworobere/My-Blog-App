class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :Like do |t|
      t.references :User, null: false, foriegn_key: true, index:true
      t.references :Post, null: false, foriegn_key: true, index:true
      t.timestamps
  end
end
end

