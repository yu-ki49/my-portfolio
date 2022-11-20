require "application_system_test_case"

class DslayersTest < ApplicationSystemTestCase
  setup do
    @dslayer = dslayers(:one)
  end

  test "visiting the index" do
    visit dslayers_url
    assert_selector "h1", text: "Dslayers"
  end

  test "creating a Dslayer" do
    visit dslayers_url
    click_on "New Dslayer"

    fill_in "Day", with: @dslayer.day
    fill_in "Episode", with: @dslayer.episode
    fill_in "Manga", with: @dslayer.manga
    fill_in "Title", with: @dslayer.title
    click_on "Create Dslayer"

    assert_text "Dslayer was successfully created"
    click_on "Back"
  end

  test "updating a Dslayer" do
    visit dslayers_url
    click_on "Edit", match: :first

    fill_in "Day", with: @dslayer.day
    fill_in "Episode", with: @dslayer.episode
    fill_in "Manga", with: @dslayer.manga
    fill_in "Title", with: @dslayer.title
    click_on "Update Dslayer"

    assert_text "Dslayer was successfully updated"
    click_on "Back"
  end

  test "destroying a Dslayer" do
    visit dslayers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dslayer was successfully destroyed"
  end
end
