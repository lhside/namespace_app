module Content
  class PostsController < ApplicationController
    def index
      @posts = Post.ordered
      @log = "[INFO] #{Post.inspect}"
    end

    def show
      @post = Post.find_by_param(params[:id])
    end
  end
end

