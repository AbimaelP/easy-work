class Subproject < ApplicationRecord
  belongs_to :projects
  has_many :issues
end
