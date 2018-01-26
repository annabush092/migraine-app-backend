class Api::V1::MigrainesController < ApplicationController

  def show
    @migraine = Migraine.find_by(id: params[:id])
    render json: @migraine
  end

end
