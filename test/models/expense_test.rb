require 'test_helper'

class ExpenseTest < ActiveSupport::TestCase

  setup do
    @expense = expenses(:one)
  end

  test "can get total payments" do
    assert_equal 20, @expense.payments_total
  end

  test "can get amount still owed" do
    assert_equal 480, @expense.amount_still_owed
  end

  test "can get total amount" do
    assert_equal 1000, Expense.total_amount
  end

  test "new Expense can be saved" do
    a = Expense.new(type: "School", due_at: Date.today, amount: 450.00)
    assert a.save
  end

  test "Expense must contain type" do
    a = Expense.new(type: "School", due_at: Date.today, amount: 450.00)
    b = Expense.new(due_at: Date.today, amount: 450.00)
    assert a.save
    assert_raises ActiveRecord::StatementInvalid do
      b.save
    end
  end


end
