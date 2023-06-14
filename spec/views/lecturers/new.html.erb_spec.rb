require 'rails_helper'

RSpec.describe "lecturers/new", type: :view do
  before(:each) do
    assign(:lecturer, Lecturer.new(
      name: "MyString",
      email: "MyString",
      degrees: "MyString",
      appointment: "MyString",
      doa: "MyString"
    ))
  end

  it "renders new lecturer form" do
    render

    assert_select "form[action=?][method=?]", lecturers_path, "post" do

      assert_select "input[name=?]", "lecturer[name]"

      assert_select "input[name=?]", "lecturer[email]"

      assert_select "input[name=?]", "lecturer[degrees]"

      assert_select "input[name=?]", "lecturer[appointment]"

      assert_select "input[name=?]", "lecturer[doa]"
    end
  end
end
