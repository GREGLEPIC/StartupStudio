class StartupsController < ApplicationController
  def index
    @startup = Startup.all
  end

  def show
    @startup = Startup.find(params[:id])
  end
end
