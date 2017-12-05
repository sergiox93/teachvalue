class Student < ApplicationRecord
    has_secure_password
    has_many :cours_sts
    has_many :ratings
    has_many :courses , through:  :cours_sts
    
end
