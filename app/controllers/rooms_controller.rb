# frozen_string_literal: true

# Rooms Controller
class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    current_user.join_room(params[:id]) if current_user.room_id != params[:id]
    @room = Room.find(params[:id])
  end
end
