require 'rails_helper'

RSpec.describe 'lecturers/show', type: :view do
  before(:each) do
    assign(:lecturer, Lecturer.create!(
                        name: 'Name',
                        email: 'Email',
                        degrees: 'Degrees',
                        appointment: 'Appointment',
                        doa: 'Doa'
                      ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Degrees/)
    expect(rendered).to match(/Appointment/)
    expect(rendered).to match(/Doa/)
  end
end
