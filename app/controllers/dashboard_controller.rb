class DashboardController < ApplicationController

  before_action :authenticate_user!


  def show
    @links = Shortener::ShortenedUrl.where("owner_id = ?",current_user).paginate(:page => params[:page], :per_page => 15)

    @engineers = Engineer.all


  end
end




      