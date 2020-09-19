class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      ActionCable.server.broadcast 'comment_channel', content: @comment
    end
  end
  
  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, fragment_id: params[:id])
  end
end
