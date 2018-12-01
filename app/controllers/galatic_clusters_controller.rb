class GalaticClustersController < ApplicationController
  before_action :set_galatic_cluster, only: [:show, :edit, :update, :destroy]

  # GET /galatic_clusters
  # GET /galatic_clusters.json
  def index
    @galatic_clusters = GalaticCluster.all
  end

  # GET /galatic_clusters/1
  # GET /galatic_clusters/1.json
  def show
  end

  # GET /galatic_clusters/new
  def new
    @galatic_cluster = GalaticCluster.new
  end

  # GET /galatic_clusters/1/edit
  def edit
  end

  # POST /galatic_clusters
  # POST /galatic_clusters.json
  def create
    @galatic_cluster = GalaticCluster.new(galatic_cluster_params)

    respond_to do |format|
      if @galatic_cluster.save
        format.html { redirect_to @galatic_cluster, notice: 'Galatic cluster was successfully created.' }
        format.json { render :show, status: :created, location: @galatic_cluster }
      else
        format.html { render :new }
        format.json { render json: @galatic_cluster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galatic_clusters/1
  # PATCH/PUT /galatic_clusters/1.json
  def update
    respond_to do |format|
      if @galatic_cluster.update(galatic_cluster_params)
        format.html { redirect_to @galatic_cluster, notice: 'Galatic cluster was successfully updated.' }
        format.json { render :show, status: :ok, location: @galatic_cluster }
      else
        format.html { render :edit }
        format.json { render json: @galatic_cluster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galatic_clusters/1
  # DELETE /galatic_clusters/1.json
  def destroy
    @galatic_cluster.destroy
    respond_to do |format|
      format.html { redirect_to galatic_clusters_url, notice: 'Galatic cluster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_galatic_cluster
      @galatic_cluster = GalaticCluster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def galatic_cluster_params
      params.fetch(:galatic_cluster, {})
    end
end
