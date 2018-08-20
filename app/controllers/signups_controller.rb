class SignupsController < ApplicationController
  def dbtest
    @signups = Signup.all
  end

  def new
    @signup = Signup.new
  end

  def create
    @signup = Signup.new(signups_params)
    if @signup.save
      redirect_to "/"
    else
      render "new"
    end
  end

  private
    def signups_params
      params.require(:signup).permit(:email, :firstname)
    end
end
