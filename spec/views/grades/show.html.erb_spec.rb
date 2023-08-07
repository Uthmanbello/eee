require 'rails_helper'

RSpec.describe 'grades/show', type: :view do
  before(:each) do
    assign(:grade, Grade.create!(
                     ca1: 2,
                     ca2: 3,
                     exam: 4,
                     total: 5,
                     grade: 'Grade',
                     gradcourse: nil,
                     gradstudent: nil
                   ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Grade/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
