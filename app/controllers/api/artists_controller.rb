class Api::ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    render "index.json.jbuilder"
  end

  def show
    @artist = Artist.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
  
  def destroy
    artist = Artist.find_by(id: params[:id])
    artist.destroy
    render json: {message: "artist Successfully Destroyed"}
  end

  def create
    @artist = Artist.new(
      name: params[:name],
      creative_field_id: params[:creative_field_id],
      video_id: params[:video_id],
      bio: params[:bio],
      image_url: params[:image_url]
    )
    if @product.save
      render "show.json.jbuilder" 
    else 
      render json: {errors:@artists.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @artist = artist.find_by(id: params[:id])
    @artist.name = params[:name] || @artist.name
    @artist.creative_field_id = params[:creative_field_id] || @artist.creative_field_id
    @artist.video_id = params[:video_id] || @artist.video_id
    @artist.bio = params[:bio] || @artist.bio
    @artist.image_url = params[:image_url] || @artist.image_url
    if @artist.save
      render "show.json.jbuilder" 
    else 
      render json: {errors:@artist.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
