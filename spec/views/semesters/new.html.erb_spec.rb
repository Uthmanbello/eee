require 'rails_helper'

RSpec.describe "semesters/new", type: :view do
  before(:each) do
    assign(:semester, Semester.new(
      name: "MyString",
      session: "MyString",
      year: "MyString"
    ))
  end

  it "renders new semester form" do
    render

    assert_select "form[action=?][method=?]", semesters_path, "post" do

      assert_select "input[name=?]", "semester[name]"

      assert_select "input[name=?]", "semester[session]"

      assert_select "input[name=?]", "semester[year]"
    end
  end
end
