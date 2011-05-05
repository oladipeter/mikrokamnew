class StylesController < ApplicationController
  
  def index    
    @styles = Style.find(:all)
  end

  def new
    @style = Style.new
  end

  def update
    @style = Style.find(params[:id])

      if @style.update_attributes(params[:style])
        redirect_to admin_path, :notice => 'Stylesheet was successfully updated.'
      else
        render :text => "Something went wrong!!!"
      end
  end

end
