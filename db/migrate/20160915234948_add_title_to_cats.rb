class AddTitleToCats < ActiveRecord::Migration[5.0]
  def change
    add_column :cats, :title_id, :integer
  end
end
