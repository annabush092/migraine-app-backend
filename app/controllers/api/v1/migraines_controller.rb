class Api::V1::MigrainesController < ApplicationController

# Not being used
  def index
    @migraines = Migraine.all
    render json: @migraines
  end

end
