# frozen_string_literal: true

# Ticket Model
class Ticket < ApplicationRecord
  has_many :votes
  belongs_to :room
end
