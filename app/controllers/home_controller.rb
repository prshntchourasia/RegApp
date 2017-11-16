class HomeController < ApplicationController
  	before_action :authenticate_user!
  	protect_from_forgery
  	
  	def index
  	end
end
