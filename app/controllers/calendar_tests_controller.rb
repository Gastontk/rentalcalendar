class CalendarTestsController < ApplicationController
  before_action :set_calendar_test, only: [:show, :edit, :update, :destroy]
  before_filter :authorize


  # GET /calendar_tests
  # GET /calendar_tests.json
  def index
    @calendar_tests = CalendarTest.all
    @rentals =Rental.all 
    # render plain: @rentals
  end

  # GET /calendar_tests/1
  # GET /calendar_tests/1.json
  def show
  end

  # GET /calendar_tests/new
  def new
    @calendar_test = CalendarTest.new
  end

  # GET /calendar_tests/1/edit
  def edit
  end

  # POST /calendar_tests
  # POST /calendar_tests.json
  def create
    @calendar_test = CalendarTest.new(calendar_test_params)

    respond_to do |format|
      if @calendar_test.save
        format.html { redirect_to @calendar_test, notice: 'Calendar test was successfully created.' }
        format.json { render :show, status: :created, location: @calendar_test }
      else
        format.html { render :new }
        format.json { render json: @calendar_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calendar_tests/1
  # PATCH/PUT /calendar_tests/1.json
  def update
    respond_to do |format|
      if @calendar_test.update(calendar_test_params)
        format.html { redirect_to @calendar_test, notice: 'Calendar test was successfully updated.' }
        format.json { render :show, status: :ok, location: @calendar_test }
      else
        format.html { render :edit }
        format.json { render json: @calendar_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calendar_tests/1
  # DELETE /calendar_tests/1.json
  def destroy
    @calendar_test.destroy
    respond_to do |format|
      format.html { redirect_to calendar_tests_url, notice: 'Calendar test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calendar_test
      @calendar_test = CalendarTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calendar_test_params
      params.require(:calendar_test).permit(:index)
    end
end
