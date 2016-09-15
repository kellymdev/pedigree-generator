class AddGenderToCats < ActiveRecord::Migration[5.0]
  def change
    add_column :cats, :gender_id, :integer
  end
end
