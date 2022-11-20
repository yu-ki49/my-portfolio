require "application_system_test_case"

class OnepiecesTest < ApplicationSystemTestCase
  setup do
    @onepiece = onepieces(:one)
  end

  test "visiting the index" do
    visit onepieces_url
    assert_selector "h1", text: "Onepieces"
  end

  test "creating a Onepiece" do
    visit onepieces_url
    click_on "New Onepiece"

    fill_in "Day", with: @onepiece.day
    fill_in "Episode", with: @onepiece.episode
    fill_in "Manga", with: @onepiece.manga
    fill_in "Title", with: @onepiece.title
    click_on "Create Onepiece"

    assert_text "Onepiece was successfully created"
    click_on "Back"
  end

  test "updating a Onepiece" do
    visit onepieces_url
    click_on "Edit", match: :first

    fill_in "Day", with: @onepiece.day
    fill_in "Episode", with: @onepiece.episode
    fill_in "Manga", with: @onepiece.manga
    fill_in "Title", with: @onepiece.title
    click_on "Update Onepiece"

    assert_text "Onepiece was successfully updated"
    click_on "Back"
  end

  test "destroying a Onepiece" do
    visit onepieces_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Onepiece was successfully destroyed"
  end
end
