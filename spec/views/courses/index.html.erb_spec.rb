require 'rails_helper'

RSpec.describe 'courses/index', type: :view do
  before(:each) do
    assign(:courses, [
             Course.create!(
               code: 'Code',
               title: 'Title',
               units: 2,
               semester: 'Semester',
               year: 3,
               option: nil
             ),
             Course.create!(
               code: 'Code',
               title: 'Title',
               units: 2,
               semester: 'Semester',
               year: 3,
               option: nil
             )
           ])
  end

  it 'renders a list of courses' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Code'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Title'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Semester'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
