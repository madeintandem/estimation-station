# frozen_string_literal: true

# Room Model
class Room < ApplicationRecord
  has_many :users
  has_many :tickets

  def current_ticket
    return {} if tickets.empty?

    tickets.last
  end

  def votes_count
    return [] if tickets.empty?

    current_ticket.votes.count
  end

  def current_votes
    return [] if tickets.empty?

    current_ticket.votes
  end

  def users_count
    users.count
  end
end
