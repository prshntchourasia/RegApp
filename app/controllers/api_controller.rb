class ApiController < ApplicationController
	http_basic_authenticate_with name: "admin", password: "admin123", except: :get_detail
    skip_before_action :verify_authenticity_token

  	def get_detail
		begin
  		employee_detail = Hash.new
  		employee_detail["name"] = "Dipak Singh"
  		employee_detail["employer"] = "XYZ INFOTECH"
  		employee_detail["designation"] = "Tech Lead"
  		employee_detail["gender"] = "Male"
  		employee_detail["contact_number"] = "9876543210"

  		render :json => {:success => true, :employee_detail => employee_detail}
  		rescue => e
  			render :json => {:success => true, :message => "Some Error Occured"}
  		end
  	end

  	def get_auth_detail
  		begin
  			employee_detail = Hash.new
  			employee_detail["name"] = "Prashant Chourasia"
	  		employee_detail["employer"] = "XYZ INFOTECH"
  			employee_detail["designation"] = "Software Engineer"
	  		employee_detail["gender"] = "Male"
	  		employee_detail["contact_number"] = "9066188845"
	  		render :json => {:success => true, :employee_detail => employee_detail}
  		rescue => e
  			render :json => {:success => true, :message => "Some Error Occured"}
  		end
  	end
end
