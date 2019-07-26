# frozen_string_literal: true

# Ticket controller
class TicketsController < ApplicationController
  def create
    ticket = Ticket.new(title: ticket_params[:title],
                        room: Room.find(ticket_params[:room_id]))

    if ticket.save
      redirect_to room_url ticket_params[:room_id]
    else
      prepare_errors(ticket)
      render template: 'rooms/show'
    end
  end

  private

  def ticket_params
    params.permit(:title, :room_id)
  end

  def prepare_errors(ticket)
    @alert = ticket.errors.messages
    @room = Room.find(ticket_params[:room_id])
  end
end
