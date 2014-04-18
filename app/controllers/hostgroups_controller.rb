class HostgroupsController < ApplicationController
  before_action :set_hostgroup, only: [:show, :edit, :update, :destroy]

  # GET /hostgroups
  # GET /hostgroups.json
  def index
    @hostgroups = Hostgroup.all
  end

  # GET /hostgroups/1
  # GET /hostgroups/1.json
  def show
  end

  # GET /hostgroups/new
  def new
    @hostgroup = Hostgroup.new
  end

  # GET /hostgroups/1/edit
  def edit
  end

  # POST /hostgroups
  # POST /hostgroups.json
  def create
    @hostgroup = Hostgroup.new(hostgroup_params)

    respond_to do |format|
      if @hostgroup.save
        format.html { redirect_to @hostgroup, notice: 'Hostgroup was successfully created.' }
        format.json { render :show, status: :created, location: @hostgroup }
      else
        format.html { render :new }
        format.json { render json: @hostgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hostgroups/1
  # PATCH/PUT /hostgroups/1.json
  def update
    respond_to do |format|
      if @hostgroup.update(hostgroup_params)
        format.html { redirect_to @hostgroup, notice: 'Hostgroup was successfully updated.' }
        format.json { render :show, status: :ok, location: @hostgroup }
      else
        format.html { render :edit }
        format.json { render json: @hostgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hostgroups/1
  # DELETE /hostgroups/1.json
  def destroy
    @hostgroup.destroy
    respond_to do |format|
      format.html { redirect_to hostgroups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hostgroup
      @hostgroup = Hostgroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hostgroup_params
      params.require(:hostgroup).permit(:hostgroup_name, :alias, :members, :hostgroup_members, :note)
    end
end
