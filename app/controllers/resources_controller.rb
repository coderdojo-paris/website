class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show, :edit, :update, :destroy]

  # GET /resources
  def index
    web = ResourceType.find_by name: 'Web Development'
    scratch = ResourceType.find_by name: 'Scratch'
    @web_resources = Resource.where(resource_type: web)
    @scratch_resources = Resource.where(resource_type: scratch)
  end

  def web_development
    web = ResourceType.find_by name: 'Web Development'
    @resources = Resource.where(resource_type: web)
  end

  def scratch
    scratch = ResourceType.find_by name: 'Scratch'
    @resources = Resource.where(resource_type: scratch)
  end

  def move_to_top
    @resource.move_to_top
    redirect_to :back
  end

  def move_higher
    @resource.move_higher
    redirect_to :back
  end

  def move_to_bottom
    @resource.move_to_bottom
    redirect_to :back
  end

  def move_lower
    @resource.move_lower
    redirect_to :back
  end

  # GET /resources/1
  def show
  end

  # GET /resources/new
  def new
    @resource = Resource.new
  end

  # GET /resources/1/edit
  def edit
  end

  # POST /resources
  def create
    @resource = Resource.new(resource_params)

    if @resource.save
      redirect_to resources_path, notice: 'Resource was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /resources/1
  def update
    if @resource.update(resource_params)
      redirect_to resources_path, notice: 'Resource was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /resources/1
  def destroy
    @resource.destroy
    redirect_to resources_path, notice: 'Resource was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource
      @resource = Resource.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resource_params
      params.require(:resource).permit(:resource_type_id, :title, :description, :resource_url)
    end
end
