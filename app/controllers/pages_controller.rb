class PagesController < ApplicationController
  def home
    @title = "Home"
    @news = New.paginate(:page => params[:page])
  end

  def articles
    @title = "Articles"
    @articles = Article.paginate(:page => params[:page])
  end

  def about
    @title = "About"
  end

end
