class PrototypesController < ApplicationController

  def index
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.find(params[:prototype_id])
    if @prototype.save
      redirect_to root_path
    else
      render :new
  end

  private
  params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
end
