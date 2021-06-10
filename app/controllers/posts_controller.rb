class PostsController < ApplicationController
    def index
        @posts = Post.all.order("created_at DESC")
        render json: @posts
    end

    def create
        post = Post.new(post_params)
        if post.save
          render json: post
        else
          render json: post.errors
        end
    end

    def destroy
        @post = Post.find(params[:id])
        if @post.destroy
          head :no_content, status: :ok
        else
          render json: post.errors, status: :unprocessable_entity
        end
    end

    private

    def post_params
      params.require(:post).permit(:name, :content)
    end

end
