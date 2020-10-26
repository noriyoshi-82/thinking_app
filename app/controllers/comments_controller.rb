class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    @user = User.find_by(params[:id])
    @comment = Comment.new(comment_params)
    ActionCable.server.broadcast 'comment_channel', content: @comment, user: @user if @comment.save
  end

  private

  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, fragment_id: params[:id])
  end
end
