class Location < ActiveRecord::Base
  belongs_to :company
  has_many :courses
  has_many :employees
end
