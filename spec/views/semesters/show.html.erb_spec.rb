require 'rails_helper'

RSpec.describe 'semesters/show', type: :view do
  before(:each) do
    assign(:semester, Semester.create!(
                        name: 'Name',
                        session: 'Session',
                        year: 'Year'
                      ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Session/)
    expect(rendered).to match(/Year/)
  end
end
