class HomeController < ApplicationController
  before_action :user
  before_action :set_q

  def show
  end

  def search
    @results = @q.result(distinct: true)
  end
 
  private
  def set_q
    @q = Anime.ransack(params[:q])
  end

  def user
    @user = current_user
  end

end
