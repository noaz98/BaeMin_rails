require "application_system_test_case"

class StoresTest < ApplicationSystemTestCase
  setup do
    @store = stores(:one)
  end

  test "visiting the index" do
    visit stores_url
    assert_selector "h1", text: "Stores"
  end

  test "creating a Store" do
    visit stores_url
    click_on "New Store"

    fill_in "Closeddays", with: @store.closedDays
    fill_in "Content", with: @store.content
    fill_in "Delivery address", with: @store.delivery_address
    fill_in "Dibs count", with: @store.dibs_count
    fill_in "Food category", with: @store.food_category
    fill_in "Guide", with: @store.guide
    fill_in "Min price", with: @store.min_price
    fill_in "Operation address", with: @store.operation_address
    fill_in "Phone", with: @store.phone
    fill_in "Rating count", with: @store.rating_count
    fill_in "Review count", with: @store.review_count
    fill_in "Store address", with: @store.store_address
    fill_in "Store name", with: @store.store_name
    fill_in "Tip", with: @store.tip
    click_on "Create Store"

    assert_text "Store was successfully created"
    click_on "Back"
  end

  test "updating a Store" do
    visit stores_url
    click_on "Edit", match: :first

    fill_in "Closeddays", with: @store.closedDays
    fill_in "Content", with: @store.content
    fill_in "Delivery address", with: @store.delivery_address
    fill_in "Dibs count", with: @store.dibs_count
    fill_in "Food category", with: @store.food_category
    fill_in "Guide", with: @store.guide
    fill_in "Min price", with: @store.min_price
    fill_in "Operation address", with: @store.operation_address
    fill_in "Phone", with: @store.phone
    fill_in "Rating count", with: @store.rating_count
    fill_in "Review count", with: @store.review_count
    fill_in "Store address", with: @store.store_address
    fill_in "Store name", with: @store.store_name
    fill_in "Tip", with: @store.tip
    click_on "Update Store"

    assert_text "Store was successfully updated"
    click_on "Back"
  end

  test "destroying a Store" do
    visit stores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Store was successfully destroyed"
  end
end
