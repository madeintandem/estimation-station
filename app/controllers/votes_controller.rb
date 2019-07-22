# frozen_string_literal: true

# Vote Controller
class VotesController < ApplicationController
  def create
    Vote.create(user: current_user,
                value: vote_params[:vote_value],
                ticket_id: vote_params[:ticket_id])

    redirect_to room_url vote_params[:room_id]
  end

  private

  def vote_params
    params.permit(%i[vote_value ticket_id room_id])
  end
end
