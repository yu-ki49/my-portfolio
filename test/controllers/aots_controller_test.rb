require "test_helper"

class AotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aot = aots(:one)
  end

  test "should get index" do
    get aots_url
    assert_response :success
  end

  test "should get new" do
    get new_aot_url
    assert_response :success
  end

  test "should create aot" do
    assert_difference('Aot.count') do
      post aots_url, params: { aot: { day: @aot.day, episode: @aot.episode, manga: @aot.manga, title: @aot.title } }
    end

    assert_redirected_to aot_url(Aot.last)
  end

  test "should show aot" do
    get aot_url(@aot)
    assert_response :success
  end

  test "should get edit" do
    get edit_aot_url(@aot)
    assert_response :success
  end

  test "should update aot" do
    patch aot_url(@aot), params: { aot: { day: @aot.day, episode: @aot.episode, manga: @aot.manga, title: @aot.title } }
    assert_redirected_to aot_url(@aot)
  end

  test "should destroy aot" do
    assert_difference('Aot.count', -1) do
      delete aot_url(@aot)
    end

    assert_redirected_to aots_url
  end
end
