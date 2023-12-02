class Cart < ApplicationRecord
  belongs_to :notepad
  has_many :products, dependent: :destroy
  accepts_nested_attributes_for :products, reject_if: lambda { |a| a[:name, :amount].blank?}, allow_destroy: true
end
