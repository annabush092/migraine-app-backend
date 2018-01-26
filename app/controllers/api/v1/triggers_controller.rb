class Api::V1::TriggersController < ApplicationController

  def show
    @triggers = Trigger.all
    render json: @triggers
  end

end
