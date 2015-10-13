module Admin
  class PostsController < ApplicationController
    def index
      @posts = Post.ordered
      @log = "[INFO] #{Post.inspect}"
    end

    def show
      @post = Post.find(params[:id])
    end
  end
end

