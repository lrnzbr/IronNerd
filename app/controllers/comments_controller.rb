class CommentsController < ApplicationController
  before_filter :load_article, :except => :destroy
  before_filter :authenticate, :only => :destroy

  before_action :load_workout
  def create
    @comment = @workout.comments.new(comment_params)
    if @comment.save
      redirect_to @workout, notice: 'Thanks for your comment'
    else
      redirect_to @workout, alert: 'Unable to add comment'
    end
end
  def destroy
    @workout = current_user.workouts.find(params[:workout_id])
    @comment = @workout.comments.find(params[:id])
    @comment.destroy
    redirect_to @workout, notice: 'Comment Deleted'
end
  private
  def load_workout
    @workout = Article.find(params[:article_id])
  end
  def comment_params
    params.require(:comment).permit(:name, :email, :body)
end 
end