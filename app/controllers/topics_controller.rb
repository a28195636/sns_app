class TopicsController < ApplicationController
  def new
    @topic = Topic.new
    render :new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to index_topics_path, notice: '登録しました'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    render :edit
  end

  def update
    redirect_to 'topic/edit'
  end

private
  def topic_params
    params.require(:topic).permit(:title, :body)
  end
  # ここまで
end