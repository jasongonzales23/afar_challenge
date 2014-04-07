class HighlightsController < ApplicationController
  def new
  end

  def create
    @highlight = Highlight.new(params[:highlight])
    @highlight.save
    redirect_to @highlight
  end

  def index
    @highlights = Highlight.all
  end

  def show
    @highlight = Highlight.find(params[:id])
  end

end
