class FragmentsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @fragments = Fragment.all.order('created_at DESC')
  end

  def new
    @fragment = Fragment.new
  end

  def create
    @fragment = Fragment.new(fragment_params)
    if @fragment.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @fragment = Fragment.find(params[:id])
    @comments = @fragment.comments
    @comment = Comment.new
    @like =  Like.where(fragment_id: @fragment.id, user_id: current_user.id)
    @like_count = @like.count
  end
  

  private
  def fragment_params
    params.require(:fragment).permit(:title, :genre_id, :heading_a, :heading_b, :heading_c, :heading_a_a, :heading_a_b, :heading_b_a, :heading_b_b, :heading_c_a, :heading_c_b, :free_memo).merge(user_id: current_user.id)
  end
end
