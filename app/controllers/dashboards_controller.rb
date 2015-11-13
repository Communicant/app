class DashboardsController < ApplicationController
  before_action :set_dashboard, only: [:show, :edit, :update, :destroy]

  # GET /dashboards
  def index
    # @dashboards = Dashboard.all
  end

  # GET /dashboards/1
  def show
  end

  # GET /dashboards/new
  def new
    @dashboard = Dashboard.new
  end

  # GET /dashboards/1/edit
  def edit
  end

  # POST /dashboards
  def create
    @dashboard = Dashboard.new(dashboard_params)

    if @dashboard.save
      redirect_to @dashboard, notice: 'Dashboard was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /dashboards/1
  def update
    if @dashboard.update(dashboard_params)
      redirect_to @dashboard, notice: 'Dashboard was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /dashboards/1
  def destroy
    @dashboard.destroy
    redirect_to dashboards_url, notice: 'Dashboard was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dashboard
      @dashboard = Dashboard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dashboard_params
      params[:dashboard]
    end
end
