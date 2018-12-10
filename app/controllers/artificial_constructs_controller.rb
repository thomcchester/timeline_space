class GalacticClustersController < ApplicationController
  before_action :set_artificial_construct, only: [:show, :edit, :update, :destroy]

  # GET /artificial_constructs
  # GET /artificial_constructs.json
  def index
    @artificial_constructs = GalacticCluster.all
  end

  # GET /artificial_constructs/1
  # GET /artificial_constructs/1.json
  def show
    @artificial_construct = GalacticCluster.find(params[:id])
  end

  # GET /artificial_constructs/new
  def new
    @artificial_construct = GalacticCluster.new
  end

  # GET /artificial_constructs/1/edit
  def edit
  end

  # POST /artificial_constructs
  # POST /artificial_constructs.json
  def create
    @artificial_construct = GalacticCluster.new(artificial_construct_params)

    respond_to do |format|
      if @artificial_construct.save
        format.html { redirect_to @artificial_construct, notice: 'Galactic cluster was successfully created.' }
        format.json { render :show, status: :created, location: @artificial_construct }
      else
        format.html { render :new }
        format.json { render json: @artificial_construct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artificial_constructs/1
  # PATCH/PUT /artificial_constructs/1.json
  def update
    respond_to do |format|
      if @artificial_construct.update(artificial_construct_params)
        format.html { redirect_to @artificial_construct, notice: 'Galactic cluster was successfully updated.' }
        format.json { render :show, status: :ok, location: @artificial_construct }
      else
        format.html { render :edit }
        format.json { render json: @artificial_construct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artificial_constructs/1
  # DELETE /artificial_constructs/1.json
  def destroy
    @artificial_construct.destroy
    respond_to do |format|
      format.html { redirect_to artificial_constructs_url, notice: 'Galactic cluster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artificial_construct
      @artificial_construct = GalacticCluster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artificial_construct_params
      params.fetch(:artificial_construct, {})
    end
end
