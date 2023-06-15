require 'rails_helper'

RSpec.describe "courses/edit", type: :view do
  let(:course) {
    Course.create!(
      code: "MyString",
      title: "MyString",
      units: 1,
      semester: "MyString",
      year: 1,
      option: nil
    )
  }

  before(:each) do
    assign(:course, course)
  end

  it "renders the edit course form" do
    render

    assert_select "form[action=?][method=?]", course_path(course), "post" do

      assert_select "input[name=?]", "course[code]"

      assert_select "input[name=?]", "course[title]"

      assert_select "input[name=?]", "course[units]"

      assert_select "input[name=?]", "course[semester]"

      assert_select "input[name=?]", "course[year]"

      assert_select "input[name=?]", "course[option_id]"
    end
  end
end
