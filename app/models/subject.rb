class Subject < ApplicationRecord
    has_many :question
    has_one_attached :video 
end
