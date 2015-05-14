class StudentsController < ApplicationController

 def new
   @student= Student.new
   @students = Student.find(:all)
 end


 def ddeals
   @student= Student.ddeals
   @students = Student.find(:all)
 end

 def ddetails
   @student= Student.ddetails
   @students = Student.find(:all)
 end

 def create
   @student = Student.new(params[:student])
   flash[:notice] = "User registered successfully"
   if @student.save
     redirect_to root_path
   end 
 end

 def login
	@student= Student.new
	@students = Student.find(:all)
 end
end
