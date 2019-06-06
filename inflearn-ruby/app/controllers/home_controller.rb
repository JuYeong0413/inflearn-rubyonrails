class HomeController < ApplicationController
    def index # HomeController 안에 들어있는 index라는 메소드 (index라는 액션)
    end
    # index라는 액션에 대응하는 view 파일을 만들어줘야 함
    
    
    def hi
        @show_message = true
        @message = "도망쳐"
    end
    
    
    def result
        @plus_result = params[:num1].to_i + params[:num2].to_i
    end
    
    
    def plus
        @plus_result = params[:num1].to_i + params[:num2].to_i
    end
end
