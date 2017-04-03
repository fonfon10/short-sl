class HomeController < ApplicationController
  before_action :authenticate_user!


def index
  @current_user = current_user

end


def select
  @thisengineer = Engineer.find(params[:id])
  thisengineer = @thisengineer.id
end



def create
  if params[:long_link] 
    @link = params[:long_link]
    engineer = params[:engineer]
    puts ("Current User:"+current_user.email.to_s)
    @short_link = Shortener::ShortenedUrl.generate(@link, engineer, owner: current_user, fresh: true)
   redirect_to home_path(@short_link.id)
  end 
end



def show
  @short_link = Shortener::ShortenedUrl.find(params[:id])    


end


end
