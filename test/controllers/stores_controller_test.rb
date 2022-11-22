require 'test_helper'

class StoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store = stores(:one)
  end

  test "should get index" do
    get stores_url
    assert_response :success
  end

  test "should get new" do
    get new_store_url
    assert_response :success
  end

  test "should create store" do
    assert_difference('Store.count') do
      post stores_url, params: { store: { closedDays: @store.closedDays, content: @store.content, delivery_address: @store.delivery_address, dibs_count: @store.dibs_count, food_category: @store.food_category, guide: @store.guide, min_price: @store.min_price, operation_address: @store.operation_address, phone: @store.phone, rating_count: @store.rating_count, review_count: @store.review_count, store_address: @store.store_address, store_name: @store.store_name, tip: @store.tip } }
    end

    assert_redirected_to store_url(Store.last)
  end

  test "should show store" do
    get store_url(@store)
    assert_response :success
  end

  test "should get edit" do
    get edit_store_url(@store)
    assert_response :success
  end

  test "should update store" do
    patch store_url(@store), params: { store: { closedDays: @store.closedDays, content: @store.content, delivery_address: @store.delivery_address, dibs_count: @store.dibs_count, food_category: @store.food_category, guide: @store.guide, min_price: @store.min_price, operation_address: @store.operation_address, phone: @store.phone, rating_count: @store.rating_count, review_count: @store.review_count, store_address: @store.store_address, store_name: @store.store_name, tip: @store.tip } }
    assert_redirected_to store_url(@store)
  end

  test "should destroy store" do
    assert_difference('Store.count', -1) do
      delete store_url(@store)
    end

    assert_redirected_to stores_url
  end
end
