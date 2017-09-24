class WelcomeController < ApplicationController
  def index
    @articles = Article.all
    @subscriber = Subscriber.new
  end
  
  def new
    @articles = Article.all
    @subscriber = Subscriber.new
  end
  
  def create
    @articles = Article.all
    @subscriber = Subscriber.new(subscriber_params)
    
    if @subscriber.save
      redirect_back(fallback_location: root_path)
    else
      render "index"
    end
  end
  
  
  private 
    def subscriber_params
      params.require(:subscriber).permit(:name, :email)
    end

  
end
