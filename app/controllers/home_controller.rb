class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    # if logged in, redirect to groups page
    if user_signed_in?
      redirect_to group_index_path
    end
  end
end
