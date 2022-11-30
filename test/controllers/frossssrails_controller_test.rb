require 'test_helper'

class FrossssrailsControllerTest < ActionDispatch::IntegrationTest
  test "should get g" do
    get frossssrails_g_url
    assert_response :success
  end

  test "should get controller" do
    get frossssrails_controller_url
    assert_response :success
  end

  test "should get front/members/registersrails" do
    get frossssrails_front/members/registersrails_url
    assert_response :success
  end

  test "should get generate" do
    get frossssrails_generate_url
    assert_response :success
  end

  test "should get devise:views" do
    get frossssrails_devise:views_url
    assert_response :success
  end

end
