class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :Comment do |t|
      t.references :User, null: false, foriegn_key: true, index:true
      t.references :Post, null: false, foriegn_key: true, index:true
      t.text :Text
      t.timestamps
  end
end
end
