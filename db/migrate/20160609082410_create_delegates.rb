class CreateDelegates < ActiveRecord::Migration[5.0]
  def change
    create_table :delegates do |t|
      t.string :state
      t.string :name_last
      t.string :name_first
      t.text :links

      t.timestamps
    end
  end
end
