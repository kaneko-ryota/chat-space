class Api::MessagesController < ApplicationController

  def index
    @group = Group.find(params[:group_id])
    @messages =messages.where("id > ?", params[:last_id])
  end

end
