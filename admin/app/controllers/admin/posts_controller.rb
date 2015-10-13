module Admin
  class PostsController < ApplicationController
    def index
      @posts = Post.ordered
    end

    def show
      @post = Post.find(params[:id])
    end
  end
end

