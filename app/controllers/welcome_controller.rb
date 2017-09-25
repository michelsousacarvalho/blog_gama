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
    @subscriber.ip = request.remote_ip.to_s
    
    if @subscriber.save
      ApplicationMailer.notifier_register(@subscriber).deliver_now
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
