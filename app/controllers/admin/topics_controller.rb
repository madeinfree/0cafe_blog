class Admin::TopicsController < Admin::BaseController
  def index
    @topics = Topic.all
    @st_id = 0
  end
  def show
    @topic = Topic.find(params[:id])
  end
  def new
    @topic = Topic.new
  end
  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to admin_topics_url
    else
      render :new
    end
  end
  def edit
    @topic = Topic.find(params[:id])
  end
  def update
    @topic = Topic.find(params[:id])
    if @topic.update(topic_params)
      redirect_to admin_topics_url
    else
      render :edit
    end
  end
  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    
    redirect_to admin_topics_url 
  end
 
  private
  def topic_params
    params.require(:topic).permit(:title, :context, :tag)
  end
end
