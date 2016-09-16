class AddImageUrlToCats < ActiveRecord::Migration[5.0]
  def change
    add_column :cats, :image_url, :string
  end
end
