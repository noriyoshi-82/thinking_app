class FragmentsController < ApplicationController
  def index
    @fragments = Fragment.all
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

  private
  def fragment_params
    params.require(:fragment).permit(:title, :genre, :heading_a, :heading_b, :heading_c, :heading_a_a, :heading_a_b, :heading_b_a, :heading_b_b, :heading_c_a, :heading_c_b, :free_memo).merge(user_id: current_user.id)
  end
end