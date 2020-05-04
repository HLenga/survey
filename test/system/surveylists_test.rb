require "application_system_test_case"

class SurveylistsTest < ApplicationSystemTestCase
  setup do
    @surveylist = surveylists(:one)
  end

  test "visiting the index" do
    visit surveylists_url
    assert_selector "h1", text: "Surveylists"
  end

  test "creating a Surveylist" do
    visit surveylists_url
    click_on "New Surveylist"

    fill_in "Laptop", with: @surveylist.laptop
    fill_in "Name", with: @surveylist.name
    fill_in "Os", with: @surveylist.os
    click_on "Create Surveylist"

    assert_text "Surveylist was successfully created"
    click_on "Back"
  end

  test "updating a Surveylist" do
    visit surveylists_url
    click_on "Edit", match: :first

    fill_in "Laptop", with: @surveylist.laptop
    fill_in "Name", with: @surveylist.name
    fill_in "Os", with: @surveylist.os
    click_on "Update Surveylist"

    assert_text "Surveylist was successfully updated"
    click_on "Back"
  end

  test "destroying a Surveylist" do
    visit surveylists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Surveylist was successfully destroyed"
  end
end
