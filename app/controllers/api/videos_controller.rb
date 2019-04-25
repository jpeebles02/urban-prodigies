class Api::VideosController < ApplicationController
  def index
    @videos = Video.all
    render "index.json.jbuilder"
  end

  def show
    @video = Video.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
  
  def destroy
    video = Video.find_by(id: params[:id])
    video.destroy
    render json: {message: "Video Successfully Destroyed"}
  end

  def create
    @video = Video.new(
      name: params[:name],
      video_url: params[:video_url],
      description: params[:description],
    )
    if @product.save
      render "show.json.jbuilder" 
    else 
      render json: {errors:@videos.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @video = Video.find_by(id: params[:id])
    @video.name = params[:name] || @video.name
    @video.video_url = params[:video_url] || @video.video_url
    @video.description = params[:description] || @video.description
    if @video.save
      render "show.json.jbuilder" 
    else 
      render json: {errors:@video.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
