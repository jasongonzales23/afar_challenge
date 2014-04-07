class HighlightsController < ApplicationController
  def new
  end

  def create
  end

  def index
    @highlights = Highlight.all
  end

end
