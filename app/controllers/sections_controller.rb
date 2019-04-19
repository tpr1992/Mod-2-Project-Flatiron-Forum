class SectionsController < ApplicationController

  def index
    @sections = Section.all.order(updated_at: :desc)
    # @section.posts.order(updated_at: :desc)
  end

  def show
    @post = Post.new
    @section = Section.find(params[:id])
    @ordered_posts = @section.posts.order(created_at: :desc)
  end

end
