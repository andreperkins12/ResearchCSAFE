class PagesController < ApplicationController
  def about
    @title = "About US"
    @content = 'This is a page content'
  end
end
