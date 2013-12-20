class WidgetsController < ApplicationController

  before_action :set_widget, only: [:show, :edit, :update, :destroy]

  def index
    @widgets = Widget.all.page(params[:page])
  end

  def show
  end

  def new
    @widget = Widget.new
  end

  def edit
  end

  def create
    @widget = Widget.new(widget_params)
    if @widget.save
      flash[:success] = "Widget was successfully created."
      redirect_to @widget
    else
      render "new"
    end
  end

  def update
    if @widget.update(widget_params)
      flash[:success] = "Widget was successfully updated."
      redirect_to @widget
    else
      render "edit"
    end
  end

  def destroy
    @widget.destroy
    flash[:info] = "Widget was successfully destroyed."
    redirect_to widgets_url
  end

  private

    def set_widget
      @widget = Widget.find(params[:id])
    end

    def widget_params
      params.require(:widget).permit!
    end

end
