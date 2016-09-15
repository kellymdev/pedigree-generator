class AddDamToCats < ActiveRecord::Migration[5.0]
  def change
    change_table :cats do |t|
      t.references :dam, index: true
    end
  end
end
