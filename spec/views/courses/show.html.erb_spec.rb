require 'rails_helper'

RSpec.describe "courses/show", type: :view do
  before(:each) do
    assign(:course, Course.create!(
      code: "Code",
      title: "Title",
      units: 2,
      semester: "Semester",
      year: 3,
      option: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Semester/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
