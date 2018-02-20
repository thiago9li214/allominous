require 'test_helper'

class MinousControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get minous_index_url
    assert_response :success
  end

  test "should get show" do
    get minous_show_url
    assert_response :success
  end

  test "should get new" do
    get minous_new_url
    assert_response :success
  end

  test "should get edit" do
    get minous_edit_url
    assert_response :success
  end

end
