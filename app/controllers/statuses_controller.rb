class StatusesController < ApplicationController
  def show
    @room = Room.find(params[:id])
    render json: {
      content: render_to_string(partial: 'rooms/content'),
      user_vote: current_user.current_vote.present?,
      vote_menu: render_to_string(partial: 'rooms/vote_menu')
    }
    # render partial: 'rooms/content'
  end
end
