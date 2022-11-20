require "test_helper"

class OnepiecesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @onepiece = onepieces(:one)
  end

  test "should get index" do
    get onepieces_url
    assert_response :success
  end

  test "should get new" do
    get new_onepiece_url
    assert_response :success
  end

  test "should create onepiece" do
    assert_difference('Onepiece.count') do
      post onepieces_url, params: { onepiece: { day: @onepiece.day, episode: @onepiece.episode, manga: @onepiece.manga, title: @onepiece.title } }
    end

    assert_redirected_to onepiece_url(Onepiece.last)
  end

  test "should show onepiece" do
    get onepiece_url(@onepiece)
    assert_response :success
  end

  test "should get edit" do
    get edit_onepiece_url(@onepiece)
    assert_response :success
  end

  test "should update onepiece" do
    patch onepiece_url(@onepiece), params: { onepiece: { day: @onepiece.day, episode: @onepiece.episode, manga: @onepiece.manga, title: @onepiece.title } }
    assert_redirected_to onepiece_url(@onepiece)
  end

  test "should destroy onepiece" do
    assert_difference('Onepiece.count', -1) do
      delete onepiece_url(@onepiece)
    end

    assert_redirected_to onepieces_url
  end
end
