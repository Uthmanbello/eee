require 'rails_helper'

RSpec.describe "gradstudents/show", type: :view do
  before(:each) do
    assign(:gradstudent, Gradstudent.create!(
      name: "Name",
      service: "Service",
      level: "Level",
      num: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Service/)
    expect(rendered).to match(/Level/)
    expect(rendered).to match(/2/)
  end
end
