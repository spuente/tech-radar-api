class ToolsController < ApplicationController
  # GET /tools
  # GET /tools.json
  def index
    @tools = Tool.all

    render json: @tools
  end

  # GET /tools/1
  # GET /tools/1.json
  def show
    @tool = Tool.find(params[:id])

    render json: @tool
  end

  # POST /tools
  # POST /tools.json
  def create
    @tool = Tool.new(params[:tool])

    if @tool.save
      render json: @tool, status: :created, location: @tool
    else
      render json: @tool.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tools/1
  # PATCH/PUT /tools/1.json
  def update
    @tool = Tool.find(params[:id])

    if @tool.update(params[:tool])
      head :no_content
    else
      render json: @tool.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tools/1
  # DELETE /tools/1.json
  def destroy
    @tool = Tool.find(params[:id])
    @tool.destroy

    head :no_content
  end
end
