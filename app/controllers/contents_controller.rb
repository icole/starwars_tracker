class ContentsController < ApplicationController
  def index
    @contents = Content.includes(:content_type).order(canonical_order: :asc)
  end

  def show
    @content = Content.find(params[:id])
    @progress = current_user.progresses.find_or_initialize_by(content: @content)
  end
end
