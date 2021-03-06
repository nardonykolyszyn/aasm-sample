# frozen_string_literal: true

class Order < ApplicationRecord
  include AASM
  has_paper_trail 
  
  aasm do
    state :ordered, initial: true
    state :returned, :resent, :distribution, :cancelled, :completed
    # Possible events
    # event :send_again do
    #   transitions from: [:returned, :cancelled], to: :distribution
    # end
    # 
    # event :cancel_order do
    #   transitions from: :ordered, to: :cancelled
    # end
  end
end
