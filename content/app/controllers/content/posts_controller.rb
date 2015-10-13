module Content
  class PostsController < ApplicationController
    def index
      @posts = Post.ordered
    end

    def show
      @post = Post.find_by_param(params[:id])
    end
  end
end

