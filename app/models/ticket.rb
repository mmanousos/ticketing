class Ticket < ApplicationRecord
  belongs_to :project
  has_many :ticket_tags 
  has_many :tickets, through: :ticket_tags

  validates :name, presence: true, uniqueness: true
  validates :status, 
    :inclusion => { in: [ 'new', 'blocked', 'in progress', 'fixed' ] }
  validates :project_id, presence: true
end
