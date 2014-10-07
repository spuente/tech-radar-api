class LanguagesController < ApplicationController
  # GET /languages
  # GET /languages.json
  def index
    @languages = Language.all

    render json: @languages
  end

  # GET /languages/1
  # GET /languages/1.json
  def show
    @language = Language.find(params[:id])

    render json: @language
  end

  # POST /languages
  # POST /languages.json
  def create
    @language = Language.new(params[:language])

    if @language.save
      render json: @language, status: :created, location: @language
    else
      render json: @language.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /languages/1
  # PATCH/PUT /languages/1.json
  def update
    @language = Language.find(params[:id])

    if @language.update(params[:language])
      head :no_content
    else
      render json: @language.errors, status: :unprocessable_entity
    end
  end

  # DELETE /languages/1
  # DELETE /languages/1.json
  def destroy
    @language = Language.find(params[:id])
    @language.destroy

    head :no_content
  end
end
