class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update, :destroy]

  # GET /expenses
  def index
    @expenses = Expense.all
    respond_to do |format|
      format.html
      format.json do
      @expenses = @expenses.map.each do |e|
        payments = e.payments.to_a.map do |payment|
          payment.as_json.merge(paid_by: User.find(payment.paid_by).first_name)
        end
        e.as_json.merge({payments: payments, payments_total: e.payments_total, amount_still_owed: e.amount_still_owed})
      end
       render json: @expenses
       end
     end
  end

  # GET /expenses/1
  def show
  end

  # GET /expenses/new
  def new
    @expense = Expense.new
    @expense_types = ["School", "Medical", "Personal", "Other"]
  end

  # GET /expenses/1/edit
  def edit
  end

  # POST /expenses
  def create
    @expense = params[:expense][:type].constantize.new(expense_params)

    if @expense.save
      redirect_to expense_path(@expense), notice: 'Expense was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /expenses/1
  def update
    if @expense.update(expense_params)
      redirect_to @expense, notice: 'Expense was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /expenses/1
  def destroy
    @expense.destroy
    redirect_to expenses_url, notice: 'Expense was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = Expense.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def expense_params
      params.require(:expense).permit(:type, :due_at, :amount)
    end
end
