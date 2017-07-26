class DashboardController < ApplicationController
  layout 'dashboard'
  def index
  end
  def new 
    @category = Category.new
  end  
end
