class MyticketsController < ApplicationController
  before_action :set_myticket, only: [:show, :edit, :update, :destroy]

  # GET /mytickets
  # GET /mytickets.json
  def index
    @mytickets = current_user.admin? ? Myticket.all : current_user.mytickets
  end

  # GET /mytickets/1
  # GET /mytickets/1.json
  def show
  end

  # GET /mytickets/new
  def new
    @myticket = Myticket.new
  end

  # GET /mytickets/1/edit
  def edit
  end

  # POST /mytickets
  # POST /mytickets.json
  def create
    @myticket = Myticket.new(myticket_params)
    @myticket.customer = current_user

    respond_to do |format|
      if @myticket.save
        format.html { redirect_to @myticket, notice: 'Myticket was successfully created.' }
        format.json { render :show, status: :created, location: @myticket }
      else
        format.html { render :new }
        format.json { render json: @myticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mytickets/1
  # PATCH/PUT /mytickets/1.json
  def update
    respond_to do |format|
      if @myticket.update(myticket_params)
        format.html { redirect_to @myticket, notice: 'Myticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @myticket }
      else
        format.html { render :edit }
        format.json { render json: @myticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mytickets/1
  # DELETE /mytickets/1.json
  def destroy
    @myticket.destroy
    respond_to do |format|
      format.html { redirect_to mytickets_url, notice: 'Myticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myticket
      @myticket = Myticket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myticket_params
      params.require(:myticket).permit(:id_customer, :subject, :mensage, :upload, :status, :date, :deadline)
    end
end
