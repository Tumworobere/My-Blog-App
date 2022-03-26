class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :Like do |t|
      t.references :author, foreign_key: { to_table: 'users' } 
      t.references :post, null: false, foriegn_key: true, index:true
      t.timestamps
  end
end
end

