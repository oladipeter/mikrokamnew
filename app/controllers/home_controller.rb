class HomeController < ApplicationController

  before_filter :menu_object_init, :content_object_init, :show_all_slide

  def index
   @index_content = Content.find_by_id(1)
  end

  def show_all_slide
   @slider = Slider.new
   @slides = Slider.all
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
