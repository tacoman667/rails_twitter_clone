class YellsController < ApplicationController
  before_filter :authenticate_user!

  before_action :set_yell, only: [:show, :edit, :update, :destroy]
  before_action :set_yells, only: [:create, :update]

  # GET /yells
  # GET /yells.json
  def index
    @yells = Yell.all
    @yell = Yell.new(user_name: current_user.email)
  end

  # GET /yells/1
  # GET /yells/1.json
  def show
  end

  # GET /yells/new
  def new
    @yell = Yell.new(user_name: current_user.email)
  end

  # GET /yells/1/edit
  def edit
  end

  # POST /yells
  # POST /yells.json
  def create
    @yell = Yell.new(yell_params)
    @yell.user_name = current_user.email

    respond_to do |format|
      if @yell.save
        @yell = Yell.new user_name: @yell.user_name
        format.html { render action: 'index', notice: 'Yell was successfully created.' }
        # format.json { render action: 'show', status: :created, location: @yell }
      else
        format.html { render action: 'index' }
        # format.json { render json: @yell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yells/1
  # PATCH/PUT /yells/1.json
  def update
    respond_to do |format|
      if @yell.update(yell_params)
        format.html { redirect_to @yell, notice: 'Yell was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @yell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yells/1
  # DELETE /yells/1.json
  def destroy
    @yell.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yell
      @yell = Yell.find(params[:id])
    end

    def set_yells
      @yells = Yell.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yell_params
      params.require(:yell).permit(:user_name, :content)
    end
end
