class Api::V1::TriggerLogsController < ApplicationController

  def index
    @trigger_logs = TriggerLog.all
    render json: @trigger_logs
  end

end
