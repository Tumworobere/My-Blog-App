class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :Comment do |t|
      t.references :author, foreign_key: { to_table: 'users' } 
      t.references :post, null: false, foriegn_key: true, index:true
      t.text :text
      t.timestamps
  end
end
end
