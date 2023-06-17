class Gradcourse < ApplicationRecord
  belongs_to :semester
  belongs_to :gradclass
  has_many :grades
end
