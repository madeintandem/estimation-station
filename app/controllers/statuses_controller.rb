# frozen_string_literal: true

# Status Controller
class StatusesController < ApplicationController
  def show
    @room = Room.find(status_params[:id])
    render json: {
      content: render_to_string(partial: 'rooms/content'),
      user_vote: current_user.current_vote.present?,
      vote_menu: render_to_string(partial: 'rooms/vote_menu')
    }
  end

  private

  def status_params
    params.permit(:id)
  end
end
