class PostsController < ApplicationController
    
    def index
        @posts = Post.all.order('created_at DESC')
    end
    
    def new
        @posts = Post.new
    end
    
    def create
        @post = Post.new(post_params)
        if @post.save
          redirect_to @posts
        else
        render 'new'
    end

    def show
        @post = Post.find(params[:id])
    end
    
    
    private
       def post_params
         params.require(:post).permit(:title, :body)
    end
end
