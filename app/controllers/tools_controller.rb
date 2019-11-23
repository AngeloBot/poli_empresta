class ToolsController < ApplicationController
  before_action :get_team
  before_action :set_tool, only: [:show, :edit, :update, :destroy]

  # GET /tools
  # GET /tools.json
  def index
    @tools = @team.tools
  end

  # GET /tools/1
  # GET /tools/1.json
  def show
  end

  # GET /tools/new
  def new
    @tool = @team.tools.build
  end

  # GET /tools/1/edit
  def edit
  end

  # POST /tools
  # POST /tools.json
  def create
    @tool = @team.tools.build(tool_params)

    respond_to do |format|
      if @tool.save
        format.html { redirect_to team_tools_url(@tool), notice: 'Tool was successfully created.' }
        format.json { render :show, status: :created, location: @tool }
      else
        format.html { render :new }
        format.json { render json: @tool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tools/1
  # PATCH/PUT /tools/1.json
  def update
    respond_to do |format|
      if @tool.update(tool_params)
        format.html { redirect_to team_tools_url(@tool), notice: 'Tool was successfully updated.' }
        format.json { render :show, status: :ok, location: @tool }
      else
        format.html { render :edit }
        format.json { render json: @tool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tools/1
  # DELETE /tools/1.json
  def destroy
    @tool.destroy
    respond_to do |format|
      format.html { redirect_to tools_url, notice: 'Tool was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def get_team
      @team = Team.find(params[:team_id])
    end

    def set_tool
      @tool = @team.tools.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tool_params
      params.require(:tool).permit(:quantity, :description, :name, :photo, :team_id)
    end
end
