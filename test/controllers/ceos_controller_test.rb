require 'test_helper'

class CeosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ceo = ceos(:one)
  end

  test "should get index" do
    get ceos_url
    assert_response :success
  end

  test "should get new" do
    get new_ceo_url
    assert_response :success
  end

  test "should create ceo" do
    assert_difference('Ceo.count') do
      post ceos_url, params: { ceo: { email: @ceo.email, login_id: @ceo.login_id, password: @ceo.password, phone: @ceo.phone } }
    end

    assert_redirected_to ceo_url(Ceo.last)
  end

  test "should show ceo" do
    get ceo_url(@ceo)
    assert_response :success
  end

  test "should get edit" do
    get edit_ceo_url(@ceo)
    assert_response :success
  end

  test "should update ceo" do
    patch ceo_url(@ceo), params: { ceo: { email: @ceo.email, login_id: @ceo.login_id, password: @ceo.password, phone: @ceo.phone } }
    assert_redirected_to ceo_url(@ceo)
  end

  test "should destroy ceo" do
    assert_difference('Ceo.count', -1) do
      delete ceo_url(@ceo)
    end

    assert_redirected_to ceos_url
  end
end
