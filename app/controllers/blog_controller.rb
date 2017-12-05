class BlogController < ApplicationController
    skip_before_action :verify_authenticity_token
    include BCrypt
    
    def hola
    @current_user ||= Student.find(session[:student_id]) if session[:student_id]
    $jj= session[:student_id]
    @cursitos = Course.find_by_sql("SELECT courses.id, courses.name FROM courses, cours_sts, students WHERE courses.id = cours_sts.course_id AND students.id = cours_sts.student_id AND students.id= #{@current_user.id}")
    
    end
    
    def poster
       lel = params[:comment].concat("'")
       comment = "'"
       comment = comment.concat(lel)
       rate =   params[:ratings]
       count = Rating.last
       if(count==nil)
       count = 1 
       else
       count =  (count.id+1)
       end
       sql = "INSERT INTO ratings VALUES(#{count},#{comment},#{rate},'2017-11-30 02:55:22.724048','2017-11-30 02:55:22.724048',#{$lul},#{$jj})"
       ActiveRecord::Base.connection.execute(sql)
       @profer = Professor.find_by_sql("SELECT professors.name, comment, rating FROM professors, ratings WHERE professors.id = ratings.professor_id")
        
    end
    
    
    def new
    gg= params[:buenwendy]
    @profes = Professor.find_by_sql("SELECT professors.id, professors.name FROM courses, cours_prs, professors WHERE courses.id = cours_prs.course_id AND professors.id = cours_prs.professor_id AND courses.id= #{gg}")
    $lul =@profes.pluck(:id).join.to_i
    print $lul
    
    end
    
    
    def serabeberhoy
       @profer = Professor.find_by_sql("SELECT professors.name, comment, rating FROM professors, ratings WHERE professors.id = ratings.professor_id").reverse

    end
    
    
    def teachers
     
     
     @curso = Course.find_by_sql("SELECT id,name FROM Courses") 
     @proraw= Professor.find_by_sql("SELECT id, name FROM Professors")     
    
    end
    
    def vert
        
        
        
        ids = params[:profes]
        id = params[:curso]
        
        if id ==nil
            
        @val = Professor.find_by_sql("SELECT professor_id FROM Ratings, professors WHERE professors.id=ratings.professor_id AND (professors.id= #{ids} OR professors.id= 841579)")

            if(@val.any?)
        @percocet = Professor.find_by_sql("SELECT professors.id, professors.name, level, AVG(rating) as rate, correo FROM professors, ratings , cours_prs, courses WHERE professors.id = ratings.professor_id AND professors.id = #{ids}  GROUP BY professors.id")
            else
        @percocet2 = Professor.find_by_sql("SELECT professors.id, professors.name, level, correo FROM professors WHERE professors.id = #{ids}")
            end   
            
        else
        ok = Professor.find_by_sql("SELECT professors.id as code FROM courses, cours_prs, professors WHERE professors.id = cours_prs.professor_id AND courses.id=cours_prs.course_id AND courses.id =#{id}")
        ok.each do |curs|
        $mom = curs.code
        end 
            @val = Professor.find_by_sql("SELECT professor_id FROM Ratings, professors WHERE professors.id=ratings.professor_id AND (professors.id= #{$mom} OR professors.id= 841579)")

            if(@val.any?)
        @procu = Professor.find_by_sql("SELECT professors.id, professors.name, level, correo, AVG(rating) as rate FROM professors, ratings, cours_prs, courses WHERE professors.id = ratings.professor_id AND professors.id = cours_prs.professor_id AND courses.id=cours_prs.course_id AND courses.id =#{id} GROUP BY professors.id")
            else
        @procu2 = Professor.find_by_sql("SELECT professors.id, professors.name, level, correo FROM professors, cours_prs, courses WHERE professors.id = cours_prs.professor_id AND courses.id=cours_prs.course_id AND courses.id =#{id}")
            end
            
            
            
          
            
        end    
        
   
    end
    
    
end
