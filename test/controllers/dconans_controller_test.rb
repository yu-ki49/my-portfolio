require "test_helper"

class DconansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dconan = dconans(:one)
  end

  test "should get index" do
    get dconans_url
    assert_response :success
  end

  test "should get new" do
    get new_dconan_url
    assert_response :success
  end

  test "should create dconan" do
    assert_difference('Dconan.count') do
      post dconans_url, params: { dconan: { day: @dconan.day, episode: @dconan.episode, manga: @dconan.manga, title: @dconan.title } }
    end

    assert_redirected_to dconan_url(Dconan.last)
  end

  test "should show dconan" do
    get dconan_url(@dconan)
    assert_response :success
  end

  test "should get edit" do
    get edit_dconan_url(@dconan)
    assert_response :success
  end

  test "should update dconan" do
    patch dconan_url(@dconan), params: { dconan: { day: @dconan.day, episode: @dconan.episode, manga: @dconan.manga, title: @dconan.title } }
    assert_redirected_to dconan_url(@dconan)
  end

  test "should destroy dconan" do
    assert_difference('Dconan.count', -1) do
      delete dconan_url(@dconan)
    end

    assert_redirected_to dconans_url
  end
end
