class AddSireToCats < ActiveRecord::Migration[5.0]
  def change
    change_table :cats do |t|
      t.references :sire, index: true
    end
  end
end
