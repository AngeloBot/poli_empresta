class ItemToolsController < ApplicationController
  before_action :set_item_tool, only: [:show, :edit, :update, :destroy]

  # GET /item_tools
  # GET /item_tools.json
  def index
    @item_tools = ItemTool.all
  end

  # GET /item_tools/1
  # GET /item_tools/1.json
  def show
  end

  # GET /item_tools/new
  def new
    @item_tool = ItemTool.new
  end

  # GET /item_tools/1/edit
  def edit
  end

  # POST /item_tools
  # POST /item_tools.json
  def create
    @item_tool = ItemTool.new(item_tool_params)

    respond_to do |format|
      if @item_tool.save
        format.html { redirect_to @item_tool, notice: 'Item tool was successfully created.' }
        format.json { render :show, status: :created, location: @item_tool }
      else
        format.html { render :new }
        format.json { render json: @item_tool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_tools/1
  # PATCH/PUT /item_tools/1.json
  def update
    respond_to do |format|
      if @item_tool.update(item_tool_params)
        format.html { redirect_to @item_tool, notice: 'Item tool was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_tool }
      else
        format.html { render :edit }
        format.json { render json: @item_tool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_tools/1
  # DELETE /item_tools/1.json
  def destroy
    @item_tool.destroy
    respond_to do |format|
      format.html { redirect_to item_tools_url, notice: 'Item tool was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_tool
      @item_tool = ItemTool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_tool_params
      params.require(:item_tool).permit(:tool_id, :loan_id, :tool_quantity)
    end
end
