require 'test_helper'

class CheckersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @checker = checkers(:one)
  end

  test "should get index" do
    get checkers_url
    assert_response :success
  end

  test "should get new" do
    get new_checker_url
    assert_response :success
  end

  test "should create checker" do
    assert_difference('Checker.count') do
      post checkers_url, params: { checker: { person_id: @checker.person.id } }
    end

    assert_redirected_to checker_url(Checker.last)
  end

  test "should show checker" do
    get checker_url(@checker)
    assert_response :success
  end

  test "should get edit" do
    get edit_checker_url(@checker)
    assert_response :success
  end

  test "should update checker" do
    patch checker_url(@checker), params: { checker: { person_id: @checker.person.id } }
    assert_redirected_to checker_url(@checker)
  end

  test "should destroy checker" do
    assert_difference('Checker.count', -1) do
      delete checker_url(@checker)
    end

    assert_redirected_to checkers_url
  end
end
