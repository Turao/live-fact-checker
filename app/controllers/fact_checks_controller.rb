class FactChecksController < ApplicationController
  before_action :set_fact_check, only: [:show, :edit, :update, :destroy]

  # GET /fact_checks
  # GET /fact_checks.json
  def index
    @fact_checks = FactCheck.all
  end

  # GET /fact_checks/1
  # GET /fact_checks/1.json
  def show
  end

  # GET /fact_checks/new
  def new
    @fact_check = FactCheck.new
    @source = Source.new()
    @fact_check.sources << @source
  end

  # GET /fact_checks/1/edit
  def edit
  end

  # POST /fact_checks
  # POST /fact_checks.json
  def create
    @fact_check = FactCheck.new(fact_check_params)

    respond_to do |format|
      if @fact_check.save
        format.html { redirect_to @fact_check, notice: 'Fact check was successfully created.' }
        format.json { render :show, status: :created, location: @fact_check }
      else
        format.html { render :new }
        format.json { render json: @fact_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fact_checks/1
  # PATCH/PUT /fact_checks/1.json
  def update
    respond_to do |format|
      if @fact_check.update(fact_check_params)
        format.html { redirect_to @fact_check, notice: 'Fact check was successfully updated.' }
        format.json { render :show, status: :ok, location: @fact_check }
      else
        format.html { render :edit }
        format.json { render json: @fact_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fact_checks/1
  # DELETE /fact_checks/1.json
  def destroy
    @fact_check.destroy
    respond_to do |format|
      format.html { redirect_to fact_checks_url, notice: 'Fact check was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fact_check
      @fact_check = FactCheck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fact_check_params
      params.require(:fact_check).permit(:veracity, :comment,
        :verifiedByMod, :statement_id, :checker_id, :moderator_id,
        sources_attributes:[:id, :url])
    end
end
