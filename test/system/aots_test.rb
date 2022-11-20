require "application_system_test_case"

class AotsTest < ApplicationSystemTestCase
  setup do
    @aot = aots(:one)
  end

  test "visiting the index" do
    visit aots_url
    assert_selector "h1", text: "Aots"
  end

  test "creating a Aot" do
    visit aots_url
    click_on "New Aot"

    fill_in "Day", with: @aot.day
    fill_in "Episode", with: @aot.episode
    fill_in "Manga", with: @aot.manga
    fill_in "Title", with: @aot.title
    click_on "Create Aot"

    assert_text "Aot was successfully created"
    click_on "Back"
  end

  test "updating a Aot" do
    visit aots_url
    click_on "Edit", match: :first

    fill_in "Day", with: @aot.day
    fill_in "Episode", with: @aot.episode
    fill_in "Manga", with: @aot.manga
    fill_in "Title", with: @aot.title
    click_on "Update Aot"

    assert_text "Aot was successfully updated"
    click_on "Back"
  end

  test "destroying a Aot" do
    visit aots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aot was successfully destroyed"
  end
end
