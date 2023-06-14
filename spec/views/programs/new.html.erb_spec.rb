require 'rails_helper'

RSpec.describe "programs/new", type: :view do
  before(:each) do
    assign(:program, Program.new(
      name: "MyString",
      image: "MyString",
      establish: "MyString"
    ))
  end

  it "renders new program form" do
    render

    assert_select "form[action=?][method=?]", programs_path, "post" do

      assert_select "input[name=?]", "program[name]"

      assert_select "input[name=?]", "program[image]"

      assert_select "input[name=?]", "program[establish]"
    end
  end
end
