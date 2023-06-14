require 'rails_helper'

RSpec.describe "options/show", type: :view do
  before(:each) do
    assign(:option, Option.create!(
      name: "Name",
      program: nil,
      type: "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Type/)
  end
end
