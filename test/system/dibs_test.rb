require "application_system_test_case"

class DibsTest < ApplicationSystemTestCase
  setup do
    @dib = dibs(:one)
  end

  test "visiting the index" do
    visit dibs_url
    assert_selector "h1", text: "Dibs"
  end

  test "creating a Dib" do
    visit dibs_url
    click_on "New Dib"

    click_on "Create Dib"

    assert_text "Dib was successfully created"
    click_on "Back"
  end

  test "updating a Dib" do
    visit dibs_url
    click_on "Edit", match: :first

    click_on "Update Dib"

    assert_text "Dib was successfully updated"
    click_on "Back"
  end

  test "destroying a Dib" do
    visit dibs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dib was successfully destroyed"
  end
end
