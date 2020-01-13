class TicketTag < ApplicationRecord
  belongs_to :tickets
  belongs_to :tags

  validates :ticket_id, presence: true
  validates :tag_id, presence: true
end