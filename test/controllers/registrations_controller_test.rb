require "test_helper"

class PostsControllerTest < ActionController::TestCase

	test "test create post" do
		get :new
		assert_response :success
		assert_not_nil assigns(:user)
		assert assigns(:post).is_a?(Post)
		assert_template :new
	end

end 