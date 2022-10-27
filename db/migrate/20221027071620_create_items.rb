class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.references :user, null: false, foreign_key: true
      t.float :price
      t.string :name
      t.integer :stock

      t.timestamps
    end
  end
end
