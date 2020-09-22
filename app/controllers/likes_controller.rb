class LikesController < ApplicationController
  before_action :authenticate_user!
  def create
    @fragment = Fragment.find(params[:id])
    @users = User.all
    @like = Like.new(user_id: current_user.id, fragment_id: params[:id])
    if @like.save
      @like_count = Like.where(user_id: @users.ids, fragment_id: @fragment.id).count
      ActionCable.server.broadcast 'like_channel', content: @like, count: @like_count 
    end
  end
end
