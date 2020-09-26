class LikesController < ApplicationController
  before_action :authenticate_user!
  def create
    @fragment = Fragment.find(params[:id])
    @user = @fragment.user.id
    @like = Like.new(user_id: current_user.id, fragment_id: @fragment.id)
    if @like.save
      @like_count = Like.where(user_id: @user, fragment_id: @fragment.id).count
      ActionCable.server.broadcast 'like_channel', content: @like, count: @like_count 
    end
  end
  
  def destroy
    @like = Like.find(params[:id])
    @like_count = Like.where(user_id: @like.user.id, fragment_id: @like.fragment.id).count
    @like.delete
    ActionCable.server.broadcast 'like_channel', content: @like, count: @like_count
  end
end
