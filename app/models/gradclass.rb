class Gradclass < ApplicationRecord
  belongs_to :semester
  has_many :gradcourses

  scope :ordered_by_name, -> { order(name: :asc) }
end
