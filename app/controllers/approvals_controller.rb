class ApprovalsController < ApplicationController
  before_action :set_approval, only: [:show, :edit, :update, :destroy]

  # GET /approvals
  def index
    @approvals = Approval.all
  end

  # GET /approvals/1
  def show
  end

  # GET /approvals/new
  def new
    @approval = Approval.new
  end

  # GET /approvals/1/edit
  def edit
  end

  # POST /approvals
  def create
    @approval = Approval.new(approval_params)

    if @approval.save
      redirect_to events_path, notice: 'Approval was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /approvals/1
  def update
    if @approval.update(approval_params)
      redirect_to @approval, notice: 'Approval was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /approvals/1
  def destroy
    @approval.destroy
    redirect_to approvals_url, notice: 'Approval was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_approval
      @approval = Approval.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def approval_params
      params.require(:approval).permit(:parent_approval, :event_id, :parent_id)
    end
end
