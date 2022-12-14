require "application_system_test_case"

class UserOrdersTest < ApplicationSystemTestCase
  setup do
    @user_order = user_orders(:one)
  end

  test "visiting the index" do
    visit user_orders_url
    assert_selector "h1", text: "User Orders"
  end

  test "creating a User order" do
    visit user_orders_url
    click_on "New User Order"

    click_on "Create User order"

    assert_text "User order was successfully created"
    click_on "Back"
  end

  test "updating a User order" do
    visit user_orders_url
    click_on "Edit", match: :first

    click_on "Update User order"

    assert_text "User order was successfully updated"
    click_on "Back"
  end

  test "destroying a User order" do
    visit user_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User order was successfully destroyed"
  end
end
