class CheckersController < ApplicationController
  before_action :set_checker, only: [:show, :edit, :update, :destroy]

  # GET /checkers
  # GET /checkers.json
  def index
    @checkers = Checker.all
  end

  # GET /checkers/1
  # GET /checkers/1.json
  def show
  end

  # GET /checkers/new
  def new
    @checker = Checker.new
    @people = Person.all
  end

  # GET /checkers/1/edit
  def edit
    @people = Person.all
  end

  # POST /checkers
  # POST /checkers.json
  def create
    @p = Person.find(checker_params[:person_id])
    @checker = Checker.new(person: @p)
    
    respond_to do |format|
      if @checker.save
        format.html { redirect_to @checker, notice: 'Checker was successfully created.' }
        format.json { render :show, status: :created, location: @checker }
      else
        format.html { render :new }
        format.json { render json: @checker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /checkers/1
  # PATCH/PUT /checkers/1.json
  def update
    respond_to do |format|
      if @checker.update(checker_params)
        format.html { redirect_to @checker, notice: 'Checker was successfully updated.' }
        format.json { render :show, status: :ok, location: @checker }
      else
        format.html { render :edit }
        format.json { render json: @checker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checkers/1
  # DELETE /checkers/1.json
  def destroy
    @checker.destroy
    respond_to do |format|
      format.html { redirect_to checkers_url, notice: 'Checker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checker
      @checker = Checker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def checker_params
      params.permit(:checkers, :person_id)
    end
end
