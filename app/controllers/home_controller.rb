class HomeController < ApplicationController

  before_filter :menu_object_init, :content_object_init  

  def index
   @index_content = Content.find_by_id(1)
  end

  def menu_object_init #on the layout
    @menu = Menu.new
    @menus = Menu.find(:all) #where( :active => true )
  end

  def content_object_init #on the layout
    @content = Content.new
    @contents = Content.find(:all)
  end 

  def show_menu_content
    @content = Content.find(params[:id])
  end 

end
