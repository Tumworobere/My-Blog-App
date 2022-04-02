class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :Name
      t.string :Photo
      t.text :Bio
      t.timestamps
      t.integer :posts_counter, default: 0
    end
  end
end
