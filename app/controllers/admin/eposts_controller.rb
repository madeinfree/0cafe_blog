class Admin::EpostsController < Admin::BaseController
  def index
    @eposts = Epost.all
  end
  def show
    @epost = Epost.find(params[:id])
  end
  def new
    @epost = Epost.new
  end
  def create
    @epost = Epost.new(epost_params)
    if @epost.save
      redirect_to admin_eposts_url
    else
      render :new
    end
  end
  def edit
    @epost = Epost.find(params[:id])
  end
  def update
    @epost = Epost.find(params[:id])
    if @epost.update(epost_params)
      redirect_to admin_eposts_url
    else
      render :edit
    end
  end
  def destroy
    @epost = Epost.find(params[:id])
    @epost.destroy
    
    redirect_to admin_eposts_url
  end
  
  private
  def epost_params
    params.require(:epost).permit(:title, :content, :tag)
  end
end
