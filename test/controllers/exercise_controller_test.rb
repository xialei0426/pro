require 'test_helper'

class ExerciseControllerTest < ActionController::TestCase
  test "should get c2" do
    get :c2
    assert_response :success
  end

end
