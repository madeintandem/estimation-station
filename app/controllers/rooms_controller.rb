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

  def new
    @room = Room.new
  end

  def create
    room = Room.new(room_params)
    if room.save!
      redirect_to room_path room.id
    else
      @alert = room.errors.messages
      redirect_to new_room_path
    end
  end

  private

  def room_params
    params.permit(:name)
  end
end
