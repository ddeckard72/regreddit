require 'test_helper'

class PostTest < ActiveSupport::TestCase
	test "don't save an empty post" do
    	post = Post.new
    	assert_not post.save
	end
end
