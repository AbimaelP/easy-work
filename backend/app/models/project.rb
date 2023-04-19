class Project < ApplicationRecord
  belongs_to :users
  has_many :subprojects
end
