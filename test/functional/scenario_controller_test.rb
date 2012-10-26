require 'test_helper'

class ScenarioControllerTest < ActionController::TestCase
  test "should get succeed" do
    get :succeed
    assert_response :success
  end

end
