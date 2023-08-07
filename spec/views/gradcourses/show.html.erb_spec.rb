require 'rails_helper'

RSpec.describe 'gradcourses/show', type: :view do
  before(:each) do
    assign(:gradcourse, Gradcourse.create!(
                          code: 'Code',
                          title: 'Title',
                          units: 2,
                          semester: nil,
                          gradclass: nil
                        ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
