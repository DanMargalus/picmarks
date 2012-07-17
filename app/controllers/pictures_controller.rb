class PicturesController < ApplicationController
  
  def destroy
    @picture = Picture.find_by_id(params[:id])
    @picture.destroy
    redirect_to pictures_url
  end
  
  def edit
    @picture = Picture.find_by_id(params[:id])
  end
  
  def update
    @picture = Picture.find_by_id(params[:id])
    @picture.url = params[:url]
    @picture.notes = params[:note]
    @picture.save
    redirect_to picture_url(@picture.id)
  end
  
  def new
    
  end
  
  def create
    p = Picture.new
    p.url = params[:url]
    p.notes = params[:note]
    p.save
    
    redirect_to "http://localhost:3000/pictures"
  end
  
  # CHALLENGE: Move the creation code to
  # its own action.  Use POST on the form
  # to route to another action called "create".
  
  def index
    @pictures = Picture.all
  end
  
  def show
    @picture = Picture.find_by_id(params[:id])
  end
end











