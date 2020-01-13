class Project < ApplicationRecord
  has_many :tickets, dependent: :destroy

  validates :name, presence: true, uniqueness: true, length: { minimum: 4 }
end
