class FamilyUser < ApplicationRecord
  belongs_to :user
  has_many :shopping_list_items, dependent: :destroy
  validates :name, presence: true
end
