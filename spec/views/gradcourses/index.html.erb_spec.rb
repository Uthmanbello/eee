require 'rails_helper'

RSpec.describe "gradcourses/index", type: :view do
  before(:each) do
    assign(:gradcourses, [
      Gradcourse.create!(
        code: "Code",
        title: "Title",
        units: 2,
        semester: nil,
        gradclass: nil
      ),
      Gradcourse.create!(
        code: "Code",
        title: "Title",
        units: 2,
        semester: nil,
        gradclass: nil
      )
    ])
  end

  it "renders a list of gradcourses" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Code".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
