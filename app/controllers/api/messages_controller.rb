class Api::MessagesController < ApplicationController

  def index
    @group = Group.find(params[:group_id])
    @messages =Message.includes(:user).where("id > ?", params[:last_id])
  end

end
