class TechniquesController < ApplicationController
  # GET /techniques
  # GET /techniques.json
  def index
    @techniques = Technique.all

    render json: @techniques
  end

  # GET /techniques/1
  # GET /techniques/1.json
  def show
    @technique = Technique.find(params[:id])

    render json: @technique
  end

  # POST /techniques
  # POST /techniques.json
  def create
    @technique = Technique.new(technique_params)

    if @technique.save
      render json: @technique, status: :created, location: @technique
    else
      render json: @technique.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /techniques/1
  # PATCH/PUT /techniques/1.json
  def update
    @technique = Technique.find(params[:id])

    if @technique.update(params[:technique])
      head :no_content
    else
      render json: @technique.errors, status: :unprocessable_entity
    end
  end

  # DELETE /techniques/1
  # DELETE /techniques/1.json
  def destroy
    @technique = Technique.find(params[:id])
    @technique.destroy

    head :no_content
  end

  # Whitelisting Action Controller parameters,
  # so they can be used in Active Model mass assignments.
  private
  def technique_params
    params.require(:technique).permit(:name, :description, :status)
  end
end
