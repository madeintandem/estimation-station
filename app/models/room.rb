# frozen_string_literal: true

# Room Model
class Room < ApplicationRecord
  has_many :users
  has_many :tickets

  def current_ticket
    tickets.last
  end

  def votes_count
    current_ticket.votes.count
  end

  def users_count
    users.count
  end
end
