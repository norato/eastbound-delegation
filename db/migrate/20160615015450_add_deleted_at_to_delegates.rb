class AddDeletedAtToDelegates < ActiveRecord::Migration[5.0]
  def change
    add_column :delegates, :deleted_at, :datetime
  end
end
