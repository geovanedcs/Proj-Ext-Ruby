class Cart < ApplicationRecord
  belongs_to :notepad
  has_many :cart, dependent: :destroy
end
