class CreateCats < ActiveRecord::Migration[5.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :registration_number
      t.belongs_to :coat_colour
      t.belongs_to :breed
      t.timestamps
    end
  end
end
