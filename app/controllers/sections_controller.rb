class SectionsController < ApplicationController

  def index
    @sections = Section.all.order(updated_at: :asc)
  end

  def show
    @section = Section.find(params[:id])
    @section.posts.order(created_at: :desc)
  end

end
