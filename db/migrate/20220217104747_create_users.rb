class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :User do |t|
      t.string :Name
      t.string :Photo
      t.text :Bio
      t.timestamps
      t.integer :Posts_Counter ,default: 0,null: false
  end
end
end
