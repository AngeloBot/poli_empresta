class LoansController < ApplicationController
  before_action :get_tool
  before_action :set_loan, only: [:show, :edit, :update, :destroy]

  # GET /loans
  # GET /loans.json
  def index
    @loans = @tool.loans.all
  end

  # GET /loans/1
  # GET /loans/1.json
  def show
  end

  # GET /loans/new
  def new
    @loan = @tool.loans.build
  end

  # GET /loans/1/edit
  def edit
  end

  # POST /loans
  # POST /loans.json
  def create
    @loan = @tool.loans.build(loan_params)

    respond_to do |format|
      if @loan.save
        format.html { redirect_to tool_loans_url(@loan), notice: 'Loan was successfully created.' }
        format.json { render :show, status: :created, location: @loan }
      else
        format.html { render :new }
        format.json { render json: @loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loans/1
  # PATCH/PUT /loans/1.json
  def update
    respond_to do |format|
      if @loan.update(loan_params)
        format.html { redirect_to tool_loans_url(@loan), notice: 'Loan was successfully updated.' }
        format.json { render :show, status: :ok, location: @loan }
      else
        format.html { render :edit }
        format.json { render json: @loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loans/1
  # DELETE /loans/1.json
  def destroy
    @loan.destroy
    respond_to do |format|
      format.html { redirect_to loans_url, notice: 'Loan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def get_tool
      @tool = Tool.find(params[:tool_id])
    end

    def set_loan
      @loan = @tool.loans.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loan_params
      params.require(:loan).permit(:owner_id, :borrower_id, :start, :end, :returned, :accepted, :tool_quantity, :tool_id)
    end
end
