require 'rails_helper'

RSpec.describe "grades/edit", type: :view do
  let(:grade) {
    Grade.create!(
      ca1: 1,
      ca2: 1,
      exam: 1,
      total: 1,
      grade: "MyString",
      gradcourse: nil,
      gradstudent: nil
    )
  }

  before(:each) do
    assign(:grade, grade)
  end

  it "renders the edit grade form" do
    render

    assert_select "form[action=?][method=?]", grade_path(grade), "post" do

      assert_select "input[name=?]", "grade[ca1]"

      assert_select "input[name=?]", "grade[ca2]"

      assert_select "input[name=?]", "grade[exam]"

      assert_select "input[name=?]", "grade[total]"

      assert_select "input[name=?]", "grade[grade]"

      assert_select "input[name=?]", "grade[gradcourse_id]"

      assert_select "input[name=?]", "grade[gradstudent_id]"
    end
  end
end
