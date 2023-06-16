require 'rails_helper'

RSpec.describe "semesters/edit", type: :view do
  let(:semester) {
    Semester.create!(
      name: "MyString",
      session: "MyString",
      year: "MyString"
    )
  }

  before(:each) do
    assign(:semester, semester)
  end

  it "renders the edit semester form" do
    render

    assert_select "form[action=?][method=?]", semester_path(semester), "post" do

      assert_select "input[name=?]", "semester[name]"

      assert_select "input[name=?]", "semester[session]"

      assert_select "input[name=?]", "semester[year]"
    end
  end
end
