require "test_helper"

class GameControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get game_index_url
    assert_response :success
  end

  test "should get click" do
    get game_click_url
    assert_response :success
  end

  test "should get buy_item" do
    get game_buy_item_url
    assert_response :success
  end
end
