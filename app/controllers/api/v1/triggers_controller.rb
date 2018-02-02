class Api::V1::TriggersController < ApplicationController

# Not being used.
  def index
    @triggers = Trigger.all
    render json: @triggers
  end

end
