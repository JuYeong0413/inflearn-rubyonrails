class HomeController < ApplicationController
    def index
        @posts = Post.all
    end
    
    
    def write
        
    end
    
    
    def create
        post = Post.new
        post.title = params[:title]
        post.content = params[:content]
        post.save
        
        redirect_to '/index'
        # 저장을 다 한 후에는 브라우저가 index 페이지로 가주세요
    end
    
    
    def modify
        @post = Post.find(params[:post_id])
    end
    
    
    def update
        post = Post.find(params[:post_id])
        post.title = params[:title]
        post.content = params[:content]
        post.save
        
        redirect_to '/index'
    end
    
    
    def delete
        Post.destroy(params[:post_id])
        
        redirect_to :back
    end
end
