class CreateDelegatesSlates < ActiveRecord::Migration[5.0]
  def change
    create_table :delegates_slates do |t|
      t.belongs_to :delegate, index: true
      t.belongs_to :slate, index: true

      t.timestamps
    end
  end
end
