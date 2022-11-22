require 'test_helper'

class DibsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dib = dibs(:one)
  end

  test "should get index" do
    get dibs_url
    assert_response :success
  end

  test "should get new" do
    get new_dib_url
    assert_response :success
  end

  test "should create dib" do
    assert_difference('Dib.count') do
      post dibs_url, params: { dib: {  } }
    end

    assert_redirected_to dib_url(Dib.last)
  end

  test "should show dib" do
    get dib_url(@dib)
    assert_response :success
  end

  test "should get edit" do
    get edit_dib_url(@dib)
    assert_response :success
  end

  test "should update dib" do
    patch dib_url(@dib), params: { dib: {  } }
    assert_redirected_to dib_url(@dib)
  end

  test "should destroy dib" do
    assert_difference('Dib.count', -1) do
      delete dib_url(@dib)
    end

    assert_redirected_to dibs_url
  end
end
