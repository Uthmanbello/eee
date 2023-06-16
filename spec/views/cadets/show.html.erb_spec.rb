require 'rails_helper'

RSpec.describe "cadets/show", type: :view do
  before(:each) do
    assign(:cadet, Cadet.create!(
      name: "Name",
      service: "Service",
      num: 2,
      gradclass: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Service/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
