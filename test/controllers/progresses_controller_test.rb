require "test_helper"

class ProgressesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get progresses_index_url
    assert_response :success
  end

  test "should get show" do
    get progresses_show_url
    assert_response :success
  end

  test "should get create" do
    get progresses_create_url
    assert_response :success
  end

  test "should get update" do
    get progresses_update_url
    assert_response :success
  end
end
