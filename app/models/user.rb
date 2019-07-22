# frozen_string_literal: true

# User Model
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tickets
  has_many :votes
  belongs_to :room, optional: true

  def join_room(room_id)
    update(room_id: room_id)
  end

  def current_vote
    vote = votes.where(ticket: room.tickets.last).first
    return nil unless vote.present?

    vote
  end
end
