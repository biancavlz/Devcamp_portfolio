class TopicsController < ApplicationController
  before_action :set_sidebar_topics
  layout 'blog'

  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
    

    if logged_in?(:side_admin)
      @blogs = @topic.blogs.recent.page(params[:page]).per(3)
    else
      @blogs = @topic.blogs.recent.published.page(params[:page]).per(3)
    end
  end

  private

  def set_sidebar_topics
    @set_sidebar_topics = Topic.with_blogs
  end  
end
