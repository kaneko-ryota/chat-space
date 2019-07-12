class Api::MessagesController < ApplicationController

  def index
    @group = Group.where(params[:group_id])
    @messages = @group.messages.where("id > ?", params[:last_id])
  end

end
