require 'rails_helper'

RSpec.describe "courses/new", type: :view do
  before(:each) do
    assign(:course, Course.new(
      code: "MyString",
      title: "MyString",
      units: 1,
      semester: "MyString",
      year: 1,
      option: nil
    ))
  end

  it "renders new course form" do
    render

    assert_select "form[action=?][method=?]", courses_path, "post" do

      assert_select "input[name=?]", "course[code]"

      assert_select "input[name=?]", "course[title]"

      assert_select "input[name=?]", "course[units]"

      assert_select "input[name=?]", "course[semester]"

      assert_select "input[name=?]", "course[year]"

      assert_select "input[name=?]", "course[option_id]"
    end
  end
end
