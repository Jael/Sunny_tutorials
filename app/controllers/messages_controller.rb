class MessagesController < ApplicationController
  load_and_authorize_resource

  def index
    @message = Message.new
    @messages = Message.where(created_at:  "#{Time.now - (60*60*24*2)}" .. "#{Time.now}")
  end
  
  def create
    @message = current_user.messages.create(params[:message])
  end
end
