class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :user, null: false, foriegn_key: true, index:true
      t.references :post, null: false, foriegn_key: true, index:true
      t.timestamps
    end
  end
end
