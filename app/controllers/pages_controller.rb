class PagesController < ApplicationController
  def home
    @events=Event.all
    @categories=Category.all
  end

  def about
  end
end
