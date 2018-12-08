class GalacticClustersController < ApplicationController
  before_action :set_galactic_cluster, only: [:show, :edit, :update, :destroy]

  # GET /galactic_clusters
  # GET /galactic_clusters.json
  def index
    @galactic_clusters = GalacticCluster.all
  end

  # GET /galactic_clusters/1
  # GET /galactic_clusters/1.json
  def show
  end

  # GET /galactic_clusters/new
  def new
    @galactic_cluster = GalacticCluster.new
  end

  # GET /galactic_clusters/1/edit
  def edit
  end

  # POST /galactic_clusters
  # POST /galactic_clusters.json
  def create
    @galactic_cluster = GalacticCluster.new(galactic_cluster_params)

    respond_to do |format|
      if @galactic_cluster.save
        format.html { redirect_to @galactic_cluster, notice: 'Galactic cluster was successfully created.' }
        format.json { render :show, status: :created, location: @galactic_cluster }
      else
        format.html { render :new }
        format.json { render json: @galactic_cluster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galactic_clusters/1
  # PATCH/PUT /galactic_clusters/1.json
  def update
    respond_to do |format|
      if @galactic_cluster.update(galactic_cluster_params)
        format.html { redirect_to @galactic_cluster, notice: 'Galactic cluster was successfully updated.' }
        format.json { render :show, status: :ok, location: @galactic_cluster }
      else
        format.html { render :edit }
        format.json { render json: @galactic_cluster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galactic_clusters/1
  # DELETE /galactic_clusters/1.json
  def destroy
    @galactic_cluster.destroy
    respond_to do |format|
      format.html { redirect_to galactic_clusters_url, notice: 'Galactic cluster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_galactic_cluster
      @galactic_cluster = GalacticCluster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def galactic_cluster_params
      params.fetch(:galactic_cluster, {})
    end
end
