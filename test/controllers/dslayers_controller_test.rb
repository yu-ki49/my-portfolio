require "test_helper"

class DslayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dslayer = dslayers(:one)
  end

  test "should get index" do
    get dslayers_url
    assert_response :success
  end

  test "should get new" do
    get new_dslayer_url
    assert_response :success
  end

  test "should create dslayer" do
    assert_difference('Dslayer.count') do
      post dslayers_url, params: { dslayer: { day: @dslayer.day, episode: @dslayer.episode, manga: @dslayer.manga, title: @dslayer.title } }
    end

    assert_redirected_to dslayer_url(Dslayer.last)
  end

  test "should show dslayer" do
    get dslayer_url(@dslayer)
    assert_response :success
  end

  test "should get edit" do
    get edit_dslayer_url(@dslayer)
    assert_response :success
  end

  test "should update dslayer" do
    patch dslayer_url(@dslayer), params: { dslayer: { day: @dslayer.day, episode: @dslayer.episode, manga: @dslayer.manga, title: @dslayer.title } }
    assert_redirected_to dslayer_url(@dslayer)
  end

  test "should destroy dslayer" do
    assert_difference('Dslayer.count', -1) do
      delete dslayer_url(@dslayer)
    end

    assert_redirected_to dslayers_url
  end
end
