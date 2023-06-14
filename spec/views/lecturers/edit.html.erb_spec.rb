require 'rails_helper'

RSpec.describe "lecturers/edit", type: :view do
  let(:lecturer) {
    Lecturer.create!(
      name: "MyString",
      email: "MyString",
      degrees: "MyString",
      appointment: "MyString",
      doa: "MyString"
    )
  }

  before(:each) do
    assign(:lecturer, lecturer)
  end

  it "renders the edit lecturer form" do
    render

    assert_select "form[action=?][method=?]", lecturer_path(lecturer), "post" do

      assert_select "input[name=?]", "lecturer[name]"

      assert_select "input[name=?]", "lecturer[email]"

      assert_select "input[name=?]", "lecturer[degrees]"

      assert_select "input[name=?]", "lecturer[appointment]"

      assert_select "input[name=?]", "lecturer[doa]"
    end
  end
end
