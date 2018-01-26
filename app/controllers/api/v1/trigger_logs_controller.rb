class Api::V1::TriggerLogsController < ApplicationController

  def show
    @trigger_log = TriggerLog.find_by(id: params[:id])
    render json: @trigger_log
  end

end
