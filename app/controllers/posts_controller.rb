class PostsController < ApplicationController
  before_action

  def new
    @post = Post.new
  end
end
