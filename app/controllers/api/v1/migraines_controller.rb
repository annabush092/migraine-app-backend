class Api::V1::MigrainesController < ApplicationController

  def index
    @migraines = Migraine.all
    render json: @migraines
  end

end
