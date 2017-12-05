class PagesController < ApplicationController
  
  before_action :must_login, only: [:show]
  
  def index
    
    
    @mejor = Professor.find_by_sql("SELECT professors.id, professors.name, AVG(rating) as wendy FROM professors, ratings WHERE professors.id = ratings.professor_id GROUP BY professors.id ORDER BY wendy DESC LIMIT 1")
    @segundo = Professor.find_by_sql("SELECT professors.id, professors.name, AVG(rating) as wendy FROM professors, ratings WHERE professors.id = ratings.professor_id GROUP BY professors.id ORDER BY wendy DESC")[1]
    @tercero = Professor.find_by_sql("SELECT professors.id, professors.name, AVG(rating) as wendy FROM professors, ratings WHERE professors.id = ratings.professor_id GROUP BY professors.id ORDER BY wendy DESC")[2]
    @peor = Professor.find_by_sql("SELECT professors.id, professors.name, AVG(rating) as wendy FROM professors, ratings WHERE professors.id = ratings.professor_id GROUP BY professors.id ORDER BY wendy ASC LIMIT 1")
    @ultimo = Professor.find_by_sql("SELECT professors.name, comment, rating FROM professors, ratings WHERE professors.id = ratings.professor_id").reverse[0]


    
  end
  
  def show
    @current_user ||= Student.find(session[:student_id]) if session[:student_id]
    @cursitos = Course.find_by_sql("SELECT courses.name FROM courses, cours_sts, students WHERE courses.id = cours_sts.course_id AND students.id = cours_sts.student_id AND students.id= #{@current_user.id}")
    
  end
  
end
