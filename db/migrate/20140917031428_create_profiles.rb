class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.date :bbirthday
      t.text :bio
      t.string :gym
      t.string :twitter

      t.timestamps
    end
  end
end
