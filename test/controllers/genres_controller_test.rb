require 'test_helper'

class GenresControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get genres_show_url
    assert_response :success
  end

end
