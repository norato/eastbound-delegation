class AddImageToDelegate < ActiveRecord::Migration[5.0]
  def change
    add_column :delegates, :image, :text
  end
end
