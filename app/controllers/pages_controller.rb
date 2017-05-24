class PagesController < ApplicationController
  def home
    @events=Event.all
    @categories=Category.all
  end

  def about
  end

  def terms_and_conditions
  end
  
end
