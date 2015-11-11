require 'test_helper'

class PostTest < ActiveSupport::TestCase
	test "don't save an empty link"
    post = Post.new
    assert_not Post.save
	end
end
