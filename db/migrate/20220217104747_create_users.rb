class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :User do |t|
      t.string :name
      t.string :photo
      t.text :bio
      t.timestamps
      t.integer :Posts_Counter ,default: 0,null: false
  end
end
end
