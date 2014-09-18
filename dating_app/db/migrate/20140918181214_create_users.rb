class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :city
      t.string :email
      t.string :sex_preference
      t.string :hair_color
      t.string :eyes_color
      t.float :height
      t.boolean :smoker
      t.string :favourite_language
      t.string :about_me

      t.timestamps
    end
  end
end
