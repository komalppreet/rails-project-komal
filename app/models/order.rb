class Order < ApplicationRecord
  belongs_to :customer
  has_and_belongs_to_many :books

  validates :number, presence: true
end
