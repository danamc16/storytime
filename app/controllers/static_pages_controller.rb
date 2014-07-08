class StaticPagesController < ApplicationController
  def home
  	@user = User.new
  end

  def create
  end
end
