require "application_system_test_case"

class CatigoriesTest < ApplicationSystemTestCase
  setup do
    @catigory = catigories(:one)
  end

  test "visiting the index" do
    visit catigories_url
    assert_selector "h1", text: "Catigories"
  end

  test "creating a Catigory" do
    visit catigories_url
    click_on "New Catigory"

    fill_in "Description", with: @catigory.description
    fill_in "Name", with: @catigory.name
    click_on "Create Catigory"

    assert_text "Catigory was successfully created"
    click_on "Back"
  end

  test "updating a Catigory" do
    visit catigories_url
    click_on "Edit", match: :first

    fill_in "Description", with: @catigory.description
    fill_in "Name", with: @catigory.name
    click_on "Update Catigory"

    assert_text "Catigory was successfully updated"
    click_on "Back"
  end

  test "destroying a Catigory" do
    visit catigories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Catigory was successfully destroyed"
  end
end
