class Api::GenresController < ApplicationController
  def index
    @genres = genre.all
    render "index.json.jbuilder"
  end

  def show
    @genre = genre.find_by(id: params[:id])
    render "show.json.jbuilder"
  end


  def create
    @genre = genre.new(
      name: params[:name],
      description: params[:description]
      )
    if @product.save
      render "show.json.jbuilder" 
    else 
      render json: {errors:@genres.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @genre = genre.find_by(id: params[:id])
    @genre.name = params[:name] || @genre.name
    @genre.description = params[:description] || @genre.description
    if @genre.save
      render "show.json.jbuilder" 
    else 
      render json: {errors:@genre.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
