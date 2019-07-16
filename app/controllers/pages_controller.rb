class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
  end

  def somethingelse
    @else = params[:something]
    @more = params[:more]
  end

  def another
    @else = params[:something]
    @more = params[:more]
  end
end
