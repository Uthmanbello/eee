require 'rails_helper'

RSpec.describe "gradstudents/index", type: :view do
  before(:each) do
    assign(:gradstudents, [
      Gradstudent.create!(
        name: "Name",
        service: "Service",
        level: "Level",
        num: 2
      ),
      Gradstudent.create!(
        name: "Name",
        service: "Service",
        level: "Level",
        num: 2
      )
    ])
  end

  it "renders a list of gradstudents" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Service".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Level".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
