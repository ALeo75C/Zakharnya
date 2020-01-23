require 'test_helper'

class CatigoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @catigory = catigories(:one)
  end

  test "should get index" do
    get catigories_url
    assert_response :success
  end

  test "should get new" do
    get new_catigory_url
    assert_response :success
  end

  test "should create catigory" do
    assert_difference('Catigory.count') do
      post catigories_url, params: { catigory: { description: @catigory.description, name: @catigory.name } }
    end

    assert_redirected_to catigory_url(Catigory.last)
  end

  test "should show catigory" do
    get catigory_url(@catigory)
    assert_response :success
  end

  test "should get edit" do
    get edit_catigory_url(@catigory)
    assert_response :success
  end

  test "should update catigory" do
    patch catigory_url(@catigory), params: { catigory: { description: @catigory.description, name: @catigory.name } }
    assert_redirected_to catigory_url(@catigory)
  end

  test "should destroy catigory" do
    assert_difference('Catigory.count', -1) do
      delete catigory_url(@catigory)
    end

    assert_redirected_to catigories_url
  end
end
