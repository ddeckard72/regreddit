require "test_helper"

class PostTest < ActiveSupport::TestCase
	test "comment without a user" do
    	post = Post.new
    	assert_not post.user.empty?
	end
end
