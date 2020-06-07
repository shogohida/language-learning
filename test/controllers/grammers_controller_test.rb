require 'test_helper'

class GrammersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get grammers_index_url
    assert_response :success
  end

  test "should get show" do
    get grammers_show_url
    assert_response :success
  end

  test "should get new" do
    get grammers_new_url
    assert_response :success
  end

end
