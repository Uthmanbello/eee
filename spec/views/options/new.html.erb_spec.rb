require 'rails_helper'

RSpec.describe "options/new", type: :view do
  before(:each) do
    assign(:option, Option.new(
      name: "MyString",
      program: nil,
      type: ""
    ))
  end

  it "renders new option form" do
    render

    assert_select "form[action=?][method=?]", options_path, "post" do

      assert_select "input[name=?]", "option[name]"

      assert_select "input[name=?]", "option[program_id]"

      assert_select "input[name=?]", "option[type]"
    end
  end
end
