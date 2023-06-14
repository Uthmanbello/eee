require 'rails_helper'

RSpec.describe "programs/index", type: :view do
  before(:each) do
    assign(:programs, [
      Program.create!(
        name: "Name",
        image: "Image",
        establish: "Establish"
      ),
      Program.create!(
        name: "Name",
        image: "Image",
        establish: "Establish"
      )
    ])
  end

  it "renders a list of programs" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Image".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Establish".to_s), count: 2
  end
end
