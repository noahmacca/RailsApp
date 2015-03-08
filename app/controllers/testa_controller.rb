class TestaController < ApplicationController
  before_action :set_testum, only: [:show, :edit, :update, :destroy]

  # GET /testa
  # GET /testa.json
  def index
    @testa = Testum.all
  end

  # GET /testa/1
  # GET /testa/1.json
  def show
  end

  # GET /testa/new
  def new
    @testum = Testum.new
  end

  # GET /testa/1/edit
  def edit
  end

  # POST /testa
  # POST /testa.json
  def create
    @testum = Testum.new(testum_params)

    respond_to do |format|
      if @testum.save
        format.html { redirect_to @testum, notice: 'Testum was successfully created.' }
        format.json { render :show, status: :created, location: @testum }
      else
        format.html { render :new }
        format.json { render json: @testum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testa/1
  # PATCH/PUT /testa/1.json
  def update
    respond_to do |format|
      if @testum.update(testum_params)
        format.html { redirect_to @testum, notice: 'Testum was successfully updated.' }
        format.json { render :show, status: :ok, location: @testum }
      else
        format.html { render :edit }
        format.json { render json: @testum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testa/1
  # DELETE /testa/1.json
  def destroy
    @testum.destroy
    respond_to do |format|
      format.html { redirect_to testa_url, notice: 'Testum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testum
      @testum = Testum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testum_params
      params.require(:testum).permit(:t)
    end
end
