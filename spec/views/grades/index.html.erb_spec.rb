require 'rails_helper'

RSpec.describe 'grades/index', type: :view do
  before(:each) do
    assign(:grades, [
             Grade.create!(
               ca1: 2,
               ca2: 3,
               exam: 4,
               total: 5,
               grade: 'Grade',
               gradcourse: nil,
               gradstudent: nil
             ),
             Grade.create!(
               ca1: 2,
               ca2: 3,
               exam: 4,
               total: 5,
               grade: 'Grade',
               gradcourse: nil,
               gradstudent: nil
             )
           ])
  end

  it 'renders a list of grades' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Grade'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
