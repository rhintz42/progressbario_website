require 'test_helper'

class ProgressbarControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
