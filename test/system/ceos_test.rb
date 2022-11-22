require "application_system_test_case"

class CeosTest < ApplicationSystemTestCase
  setup do
    @ceo = ceos(:one)
  end

  test "visiting the index" do
    visit ceos_url
    assert_selector "h1", text: "Ceos"
  end

  test "creating a Ceo" do
    visit ceos_url
    click_on "New Ceo"

    fill_in "Email", with: @ceo.email
    fill_in "Login", with: @ceo.login_id
    fill_in "Password", with: @ceo.password
    fill_in "Phone", with: @ceo.phone
    click_on "Create Ceo"

    assert_text "Ceo was successfully created"
    click_on "Back"
  end

  test "updating a Ceo" do
    visit ceos_url
    click_on "Edit", match: :first

    fill_in "Email", with: @ceo.email
    fill_in "Login", with: @ceo.login_id
    fill_in "Password", with: @ceo.password
    fill_in "Phone", with: @ceo.phone
    click_on "Update Ceo"

    assert_text "Ceo was successfully updated"
    click_on "Back"
  end

  test "destroying a Ceo" do
    visit ceos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ceo was successfully destroyed"
  end
end
