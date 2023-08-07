class Grade < ApplicationRecord
  belongs_to :gradcourse
  belongs_to :gradstudent

  before_save :calculate_total_and_grade

  def calculate_total_and_grade
    self.total = ca1 + ca2 + exam
    self.grade = calculate_grade
  end

  private

  def calculate_grade
    if total >= 70
      'A'
    elsif total >= 60
      'B'
    elsif total >= 50
      'C'
    elsif total >= 45
      'D'
    elsif total >= 40
      'E'
    else
      'F'
    end
  end
end
