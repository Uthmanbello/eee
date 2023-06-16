class Gradclass < ApplicationRecord
  belongs_to :semester

  scope :ordered_by_name, -> { order(name: :asc) }
end
