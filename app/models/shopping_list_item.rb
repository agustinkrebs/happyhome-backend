class ShoppingListItem < ApplicationRecord
  belongs_to :shopping_list
  belongs_to :family_user
  validates :name, :quantity, presence: true
end
