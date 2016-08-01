class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :rulers_of_the
      t.string :from
      t.string :photo_url

      t.timestamps
    end
  end
end
