class RepliesController < ApplicationController

  def index
    @replies = Reply.all.order(updated_at: :desc)
  end

  def show
    @reply = Reply.find(params[:id])
    @reply.post .order(updated_at: :desc)
  end

  def new
    @reply = Reply.new
  end

  def create
    @reply = Reply.new(reply_params(:content, :post_id, :user_id))
    @reply.save
    if @reply.valid?
      redirect_to post_path(@reply.post_id)
    else
      render :new
    end
  end


  private

  def reply_params(*args)
    params.require(:reply).permit(*args)
  end

end
