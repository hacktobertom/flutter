class PagesController < ApplicationController
  
  # back-end code for page/index
  def index
  end

  # back-end code for page/home
  def home
  end

  # back-end code for page/profile
  def profile
    # grab the username from the URL as :id
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else
      # redirect to 404 page (we'll use root for now)
      redirect_to root_path, :notice => "User not found!"
    end
  end

  # back-end code for page/explore
  def explore
  end
  
end
