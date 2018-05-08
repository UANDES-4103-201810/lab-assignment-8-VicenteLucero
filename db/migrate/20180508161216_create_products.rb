class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :weight
      t.integer :price
      t.references :user_id, foreign_key: true

      t.timestamps
    end
  end
end
