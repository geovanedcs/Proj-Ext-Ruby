class Notepad < ApplicationRecord
    has_many :carts, dependent: :destroy
    has_many :products, through: :cart
end
