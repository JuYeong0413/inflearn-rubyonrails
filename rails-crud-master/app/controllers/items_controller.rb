class ItemsController < ApplicationController
    # before_action :authenticate_user!
    before_action :load_item, only: [:show, :edit, :update, :destroy]
    
    # item 목록 페이지
    def index
        @items = Item.all
    end
    
    # item 생성 페이지
    def new
        @item = Item.new
    end
    
    # item 생성 액션
    def create
        @item = Item.new(set_params)
        @item.save
        redirect_to root_path
    end
    
    # item 상세보기 페이지
    def show
        @comments = Comment.where(item: @item)
    end
    
    # item 수정 페이지
    def edit
    end
    
    # item 수정 액션
    def update
        @item.update(set_params)
        redirect_to item_path(@item)
    end
    
    # item 삭제 액션
    def destroy
        @item.destroy
        redirect_to root_path
    end
    
    private
    def load_item
        @item = Item.find params[:id]
    end
    
    def set_params
        params.require(:item).permit(:title, :price, :description)
    end
end
