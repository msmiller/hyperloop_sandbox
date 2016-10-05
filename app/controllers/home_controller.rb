class HomeController < ApplicationController

  def show
    render_component #say_hello_to: "iwebfuiwybf" #current_user.name
  end

  def index
    render
  end

end
