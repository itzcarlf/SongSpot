# Pages controller for displaying the basic pages (home,about,contact,help)
class PagesController < ApplicationController
  def home
    @articles = Article.all
  end

  def about
  end

  def contact
  end

  def help
  end
end
