require 'rails_helper'

RSpec.describe 'grades/new', type: :view do
  before(:each) do
    assign(:grade, Grade.new(
                     ca1: 1,
                     ca2: 1,
                     exam: 1,
                     total: 1,
                     grade: 'MyString',
                     gradcourse: nil,
                     gradstudent: nil
                   ))
  end

  it 'renders new grade form' do
    render

    assert_select 'form[action=?][method=?]', grades_path, 'post' do
      assert_select 'input[name=?]', 'grade[ca1]'

      assert_select 'input[name=?]', 'grade[ca2]'

      assert_select 'input[name=?]', 'grade[exam]'

      assert_select 'input[name=?]', 'grade[total]'

      assert_select 'input[name=?]', 'grade[grade]'

      assert_select 'input[name=?]', 'grade[gradcourse_id]'

      assert_select 'input[name=?]', 'grade[gradstudent_id]'
    end
  end
end
