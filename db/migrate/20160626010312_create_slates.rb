class CreateSlates < ActiveRecord::Migration[5.0]
  def change
    create_table :slates do |t|
      t.string :title
      t.string :tweet
      t.string :card_title
      t.string :card_description
      t.text :image

      t.timestamps
    end
  end
end
