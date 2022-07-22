require "test_helper"

class SkinsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get skins_new_url
    assert_response :success
  end

  test "should get show" do
    get skins_show_url
    assert_response :success
  end

  test "should get create" do
    get skins_create_url
    assert_response :success
  end

  test "should get index" do
    get skins_index_url
    assert_response :success
  end
end
