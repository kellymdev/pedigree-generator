class CreateCoatColours < ActiveRecord::Migration[5.0]
  def change
    create_table :coat_colours do |t|
      t.string :name
      t.timestamps
    end
  end
end
