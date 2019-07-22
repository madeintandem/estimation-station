# frozen_string_literal: true

# Ticket controller
class TicketsController < ApplicationController
  def create
    ticket = Ticket.where(title: ticket_title_param)
    return if ticket.present?

    @ticket = Ticket.create(title: ticket_title_param,
                            room: Room.find(room_id_param))

    redirect_to room_url room_id_param
  end

  private

  def ticket_title_param
    params.permit(:title).require(:title)
  end

  def room_id_param
    params.permit(:room_id).require(:room_id)
  end
end
