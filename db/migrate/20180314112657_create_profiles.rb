class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :username
      t.string :city
      t.integer :age
      t.string :preference
      t.string :gender
      t.string :chakra_colour
      t.string :photo
      t.integer :nerdy
      t.integer :sporty
      t.integer :party
      t.integer :organized
      t.integer :spiritual
    end
  end
end
