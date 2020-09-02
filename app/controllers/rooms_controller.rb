class RoomsController < ApplicationController
  def index
    @room = Room.all
  end
end
