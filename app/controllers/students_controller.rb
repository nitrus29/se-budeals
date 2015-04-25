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
   if @student.save
      redirect_to new_student_path
   end
end
end
