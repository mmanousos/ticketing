class Tag < ApplicationRecord 
  has_many :ticket_tags
  has_many :tickets, through: :ticket_tags

  validates :name, presence: true, length: { minimum: 2 }, uniqueness: true, format: { with: /\A[a-zA-Z]+\Z/}
end