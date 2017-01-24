require 'test_helper'

class FactChecksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fact_check = fact_checks(:one)
  end

  test "should get index" do
    get fact_checks_url
    assert_response :success
  end

  test "should get new" do
    get new_fact_check_url
    assert_response :success
  end

  test "should create fact_check" do
    assert_difference('FactCheck.count') do
      post fact_checks_url, params: { fact_check: { comment: @fact_check.comment, veracity: @fact_check.veracity, verifiedByMod: @fact_check.verifiedByMod } }
    end

    assert_redirected_to fact_check_url(FactCheck.last)
  end

  test "should show fact_check" do
    get fact_check_url(@fact_check)
    assert_response :success
  end

  test "should get edit" do
    get edit_fact_check_url(@fact_check)
    assert_response :success
  end

  test "should update fact_check" do
    patch fact_check_url(@fact_check), params: { fact_check: { comment: @fact_check.comment, veracity: @fact_check.veracity, verifiedByMod: @fact_check.verifiedByMod } }
    assert_redirected_to fact_check_url(@fact_check)
  end

  test "should destroy fact_check" do
    assert_difference('FactCheck.count', -1) do
      delete fact_check_url(@fact_check)
    end

    assert_redirected_to fact_checks_url
  end
end
