class HomeController < ApplicationController

  before_filter :menu_object_init, :content_object_init, :show_all_slide, :advice_object_init, :tab_object_init, :stylesheet

  def stylesheet
    @stylesheet = Stylesheet.new    
    @stylesheets = Stylesheet.where(:active => 1)
  end

  def index
   redirect_to content_home_path(1)
   #@index_content = Content.find_by_id(1)
  end

  def show_all_slide
   @slider = Slider.new
   @slides = Slider.find(:all)
  end

  def advice_object_init
    @advice = Advice.new
    @advices = Advice.find(:all)
  end

  def menu_object_init #on the layout
    @menu = Menu.new
    @menus = Menu.find(:all) #where( :active => true )
  end

  def content_object_init #on the layout
    @content = Content.new
    @contents = Content.find(:all)
  end

  def tab_object_init #on the layout
    @tab = Tab.new
    @tabs = Tab.find(:all)
  end

  def content
    @content = Content.find(params[:id])
    @container = "content" #Azert kell hogy a viewban tudjam hogy melyik fejlecet kell kiratnom
  end

  def advice
    @advice = Advice.find(params[:id])
    @container = "advice"
  end

  def slider
    @slider = Slider.find(params[:id])
    @container = "slider"
  end

end