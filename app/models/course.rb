class Course < ApplicationRecord
    
    has_many :cours_sts
    has_many :cours_prs
    has_many :ratings
    has_many :students , through: :cours_sts
    has_many :professors , through: :cours_prs
    
    
end
