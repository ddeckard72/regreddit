class VotesController < ApplicationController
 ## require user to be logged in
  before_action :authenticate_user!, only: [:create]

  def up
    @post = Post.find(params[:id])
    @post.vote.create(user_id: current_user.id, post_id: @post.id ,vote: 1)
    redirect_to post_path(@post)
  end

  def down
    @post = Post.find(params[:id])
    @post.vote.create(user_id: current_user.id, post_id: @post.id, vote: :vote -1)
    redirect_to post_path(@post)
  end

end