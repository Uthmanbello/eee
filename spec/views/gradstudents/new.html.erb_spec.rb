require 'rails_helper'

RSpec.describe "gradstudents/new", type: :view do
  before(:each) do
    assign(:gradstudent, Gradstudent.new(
      name: "MyString",
      service: "MyString",
      level: "MyString",
      num: 1
    ))
  end

  it "renders new gradstudent form" do
    render

    assert_select "form[action=?][method=?]", gradstudents_path, "post" do

      assert_select "input[name=?]", "gradstudent[name]"

      assert_select "input[name=?]", "gradstudent[service]"

      assert_select "input[name=?]", "gradstudent[level]"

      assert_select "input[name=?]", "gradstudent[num]"
    end
  end
end
