require 'test_helper'

class LoansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loan = loans(:one)
  end

  test "should get index" do
    get loans_url
    assert_response :success
  end

  test "should get new" do
    get new_loan_url
    assert_response :success
  end

  test "should create loan" do
    assert_difference('Loan.count') do
      post loans_url, params: { loan: { accepted: @loan.accepted, borrower_id: @loan.borrower_id, end: @loan.end, owner_id: @loan.owner_id, returned: @loan.returned, start: @loan.start, tool_id: @loan.tool_id, tool_quantity: @loan.tool_quantity } }
    end

    assert_redirected_to loan_url(Loan.last)
  end

  test "should show loan" do
    get loan_url(@loan)
    assert_response :success
  end

  test "should get edit" do
    get edit_loan_url(@loan)
    assert_response :success
  end

  test "should update loan" do
    patch loan_url(@loan), params: { loan: { accepted: @loan.accepted, borrower_id: @loan.borrower_id, end: @loan.end, owner_id: @loan.owner_id, returned: @loan.returned, start: @loan.start, tool_id: @loan.tool_id, tool_quantity: @loan.tool_quantity } }
    assert_redirected_to loan_url(@loan)
  end

  test "should destroy loan" do
    assert_difference('Loan.count', -1) do
      delete loan_url(@loan)
    end

    assert_redirected_to loans_url
  end
end
