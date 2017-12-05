class Professor < ApplicationRecord
    
    has_many :cours_prs
    has_many :ratings
    has_many :courses , through:  :cours_prs
end
