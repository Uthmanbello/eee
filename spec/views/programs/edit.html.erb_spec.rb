require 'rails_helper'

RSpec.describe "programs/edit", type: :view do
  let(:program) {
    Program.create!(
      name: "MyString",
      image: "MyString",
      establish: "MyString"
    )
  }

  before(:each) do
    assign(:program, program)
  end

  it "renders the edit program form" do
    render

    assert_select "form[action=?][method=?]", program_path(program), "post" do

      assert_select "input[name=?]", "program[name]"

      assert_select "input[name=?]", "program[image]"

      assert_select "input[name=?]", "program[establish]"
    end
  end
end
