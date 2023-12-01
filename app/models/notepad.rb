class Notepad < ApplicationRecord
    has_many :cart, dependent: :destroy
    has_many :products, through: :cart
end
