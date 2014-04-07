class HighlightsController < ApplicationController

  before_filter :authenticate_user!, only: [:create]

  def new
  end

  def create
    @highlight = current_user.highlights.build(params[:highlight])

    if @highlight.save
      flash[:success] = "Highlight Created!"
      redirect_to @highlight
    else
      render 'index'
    end
  end

  def index
    @highlights = Highlight.all
  end

  def show
    @highlight = Highlight.find(params[:id])
  end

end
