require 'rails_helper'

RSpec.describe 'lecturers/index', type: :view do
  before(:each) do
    assign(:lecturers, [
             Lecturer.create!(
               name: 'Name',
               email: 'Email',
               degrees: 'Degrees',
               appointment: 'Appointment',
               doa: 'Doa'
             ),
             Lecturer.create!(
               name: 'Name',
               email: 'Email',
               degrees: 'Degrees',
               appointment: 'Appointment',
               doa: 'Doa'
             )
           ])
  end

  it 'renders a list of lecturers' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Email'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Degrees'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Appointment'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Doa'.to_s), count: 2
  end
end
