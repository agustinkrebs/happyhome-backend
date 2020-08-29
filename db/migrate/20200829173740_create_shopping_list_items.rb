class CreateShoppingListItems < ActiveRecord::Migration[6.0]
  def change
    create_table :shopping_list_items do |t|
      t.string :name
      t.integer :quantity
      t.string :comment
      t.references :shopping_list, null: false, foreign_key: true
      t.references :family_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
