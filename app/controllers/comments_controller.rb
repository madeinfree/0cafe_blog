class CommentsController < ApplicationController
  before_action :comment_find
  def new
    @comment = @topic.comments.new
  end
  def create
    @comment = @topic.comments.new(comment_params)
    if @comment.save
      redirect_to topic_url(@topic)
    else
      render :new
    end
  end
  
  private
  def comment_params
    params.require(:comment).permit(:title, :content)
  end
  def comment_find
    @topic = Topic.find(params[:topic_id])

  end
end
