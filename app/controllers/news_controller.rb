class NewsController < ApplicationController
  def rss
    @news = New.find(:all, :order => "id DESC", :limit => 10)
    render :layout => false
    response.headers["Content-Type"] = "application/xml; charset=utf-8"
  end
end
