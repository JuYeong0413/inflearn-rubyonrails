class CommentsController < ApplicationController
    before_action :authenticate_user!
    before_action :load_item
    
    def create
        @user = current_user
        @comment = Comment.new(comment_params)
        @comment.user = @user
        @comment.item = @item
        @comment.save
    end
    
    def destroy
    end
    
    private
    def comment_params
        params.require(:comment).permit(:body)
    end
    
    def load_item
        @item = Item.find params[:item_id]
    end
end
