class Api::V1::MessagesController < ApplicationController

  before_action :get_channel

  def index
    @messages = Message.all
    render json: @messages
  end

  def create
  end

  private

  def get_channel
    Channel.find_by(name: params[:channel_id])
  end

end
