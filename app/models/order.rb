class Order < ActiveRecord::Base
  belongs_to :book

  scope :in_progress, ->{where(state: 'in progress')}
  scope :complete, -> {where(state: 'complete')}
end
