class PrototypesController < ApplicationController

  def index
  end

  def new
    @prototype = Prototype.new
  end

  def create
  end

  private
  params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
end
