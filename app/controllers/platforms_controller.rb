class PlatformsController < ApplicationController
  # GET /platforms
  # GET /platforms.json
  def index
    @platforms = Platform.all

    render json: @platforms
  end

  # GET /platforms/1
  # GET /platforms/1.json
  def show
    @platform = Platform.find(params[:id])

    render json: @platform
  end

  # POST /platforms
  # POST /platforms.json
  def create
    @platform = Platform.new(params[:platform])

    if @platform.save
      render json: @platform, status: :created, location: @platform
    else
      render json: @platform.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /platforms/1
  # PATCH/PUT /platforms/1.json
  def update
    @platform = Platform.find(params[:id])

    if @platform.update(params[:platform])
      head :no_content
    else
      render json: @platform.errors, status: :unprocessable_entity
    end
  end

  # DELETE /platforms/1
  # DELETE /platforms/1.json
  def destroy
    @platform = Platform.find(params[:id])
    @platform.destroy

    head :no_content
  end
end
