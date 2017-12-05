class SessionsController < ApplicationController
  def new
  end
  
  
  def create
    student = Student.find_by(user: params[:user])
    
    
    if student && student.authenticate(params[:password])
      session[:student_id] = student.id
      flash[:success]="welcome to teachvalue"
      redirect_to root_path
    else
      flash.now[:danger] = "Password and user don't match"
      render 'new'
    end
  end  
    
  def destroy
    session[:student_id] = nil
    flash[:success] = "Good bye"
    redirect_to root_path
  end  

end
