require 'rails_helper'

RSpec.describe 'semesters/index', type: :view do
  before(:each) do
    assign(:semesters, [
             Semester.create!(
               name: 'Name',
               session: 'Session',
               year: 'Year'
             ),
             Semester.create!(
               name: 'Name',
               session: 'Session',
               year: 'Year'
             )
           ])
  end

  it 'renders a list of semesters' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Session'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Year'.to_s), count: 2
  end
end
