class ContentsController < ApplicationController
  def index
    @contents = Content.includes(:content_type).order(canonical_order: :asc)
  end

  def show
    @content = Content.find(params[:id])
    if current_user
    @progress = current_user.progresses.find_or_initialize_by(content: @content)
    else
      @progress = Progress.new
    end
  end
end
