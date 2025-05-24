class ProgressesController < ApplicationController
  before_action :set_content
  before_action :set_progress, only: [:update]

  def index
    @contents = Content.includes(:content_type).order(canonical_order: :asc)
    @progresses = current_user.progresses.includes(:content)
  end

  def show
    @progress = current_user.progresses.find(params[:id])
  end

  def create
    @progress = Progress.find_or_initialize_by(content: @content, user: current_user)
    @progress.assign_attributes(progress_params)

    if @progress.save
      respond_to do |format|
        format.turbo_stream { render turbo_stream: turbo_stream.replace("progress_#{@content.id}", partial: "progresses/progress_form", locals: { content: @content, progress: @progress }) }
        format.html { redirect_to @content, notice: "Progress was successfully created." }
      end
    else
      respond_to do |format|
        format.turbo_stream { render turbo_stream: turbo_stream.replace("progress_#{@content.id}", partial: "progresses/progress_form", locals: { content: @content, progress: @progress }) }
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    if @progress.update(progress_params)
      respond_to do |format|
        format.turbo_stream { render turbo_stream: turbo_stream.replace("progress_#{@content.id}", partial: "progresses/progress_form", locals: { content: @content, progress: @progress }) }
        format.html { redirect_to @content, notice: "Progress was successfully updated." }
      end
    else
      respond_to do |format|
        format.turbo_stream { render turbo_stream: turbo_stream.replace("progress_#{@content.id}", partial: "progresses/progress_form", locals: { content: @content, progress: @progress }) }
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_content
    @content = Content.find(params[:content_id])
  end

  def set_progress
    @progress = Progress.find_or_initialize_by(content: @content, user: current_user)
  end

  def progress_params
    params.require(:progress).permit(:progress)
  end
end
