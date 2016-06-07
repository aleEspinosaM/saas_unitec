class PagesController < ApplicationController
  def home
    @basic_plan = Plan.find(1) #query string parameters que asociacmos en la base de datos
    @pro_plan = Plan.find(2)
  end
  
  def about
  end
end