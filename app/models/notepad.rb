class Notepad < ApplicationRecord
    has_many :cart, dependent: :destroy
end
