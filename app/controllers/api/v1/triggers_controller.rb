class Api::V1::TriggersController < ApplicationController

  def show
    @trigger = Trigger.find_by(id: params[:id])
    render json: @trigger
  end

end
