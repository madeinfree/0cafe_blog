class TopicsController < ApplicationController
  def index
    @topics = Topic.list_filter(params[:tag])
    @sort_id = 0
  end
  def show
    @topic = Topic.find(params[:id])
  end

  private
  def topic_params
    params.require(:topic).permit(:title, :context, :tag)
  end
end
