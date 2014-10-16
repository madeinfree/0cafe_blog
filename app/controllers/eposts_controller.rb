class EpostsController < ApplicationController
  def index
    @eposts = Epost.all
    @sort_id = 0
  end
  def show
    @epost = Epost.find(params[:id])
  end
  
  private
  def epost_params
    params.require(:epost).permit(:title, :content, :tag)
  end
end
