class ShoppingListItem < ApplicationRecord
  belongs_to :shopping_list
  belongs_to :family_user
end
