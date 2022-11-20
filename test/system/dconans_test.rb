require "application_system_test_case"

class DconansTest < ApplicationSystemTestCase
  setup do
    @dconan = dconans(:one)
  end

  test "visiting the index" do
    visit dconans_url
    assert_selector "h1", text: "Dconans"
  end

  test "creating a Dconan" do
    visit dconans_url
    click_on "New Dconan"

    fill_in "Day", with: @dconan.day
    fill_in "Episode", with: @dconan.episode
    fill_in "Manga", with: @dconan.manga
    fill_in "Title", with: @dconan.title
    click_on "Create Dconan"

    assert_text "Dconan was successfully created"
    click_on "Back"
  end

  test "updating a Dconan" do
    visit dconans_url
    click_on "Edit", match: :first

    fill_in "Day", with: @dconan.day
    fill_in "Episode", with: @dconan.episode
    fill_in "Manga", with: @dconan.manga
    fill_in "Title", with: @dconan.title
    click_on "Update Dconan"

    assert_text "Dconan was successfully updated"
    click_on "Back"
  end

  test "destroying a Dconan" do
    visit dconans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dconan was successfully destroyed"
  end
end
