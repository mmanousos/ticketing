class Ticket < ApplicationRecord
  belongs_to :project

  validates :name, presence: true, uniqueness: true
  validates :status, 
    :inclusion => { in: [ 'new', 'blocked', 'in progress', 'fixed' ] }
  validates :project_id, presence: true
end
