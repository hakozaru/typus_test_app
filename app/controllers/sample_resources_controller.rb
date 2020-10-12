class SampleResourcesController < ApplicationController
  before_action :set_sample_resource, only: [:show, :edit, :update, :destroy]

  # GET /sample_resources
  # GET /sample_resources.json
  def index
    @sample_resources = SampleResource.all
  end

  # GET /sample_resources/1
  # GET /sample_resources/1.json
  def show
  end

  # GET /sample_resources/new
  def new
    @sample_resource = SampleResource.new
  end

  # GET /sample_resources/1/edit
  def edit
  end

  # POST /sample_resources
  # POST /sample_resources.json
  def create
    @sample_resource = SampleResource.new(sample_resource_params)

    respond_to do |format|
      if @sample_resource.save
        format.html { redirect_to @sample_resource, notice: 'Sample resource was successfully created.' }
        format.json { render :show, status: :created, location: @sample_resource }
      else
        format.html { render :new }
        format.json { render json: @sample_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sample_resources/1
  # PATCH/PUT /sample_resources/1.json
  def update
    respond_to do |format|
      if @sample_resource.update(sample_resource_params)
        format.html { redirect_to @sample_resource, notice: 'Sample resource was successfully updated.' }
        format.json { render :show, status: :ok, location: @sample_resource }
      else
        format.html { render :edit }
        format.json { render json: @sample_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sample_resources/1
  # DELETE /sample_resources/1.json
  def destroy
    @sample_resource.destroy
    respond_to do |format|
      format.html { redirect_to sample_resources_url, notice: 'Sample resource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample_resource
      @sample_resource = SampleResource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sample_resource_params
      params.fetch(:sample_resource, {})
    end
end
