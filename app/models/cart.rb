class Cart < ApplicationRecord
  belongs_to :notepad
  has_many :products, dependent: :destroy
end
