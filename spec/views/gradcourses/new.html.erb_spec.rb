require 'rails_helper'

RSpec.describe 'gradcourses/new', type: :view do
  before(:each) do
    assign(:gradcourse, Gradcourse.new(
                          code: 'MyString',
                          title: 'MyString',
                          units: 1,
                          semester: nil,
                          gradclass: nil
                        ))
  end

  it 'renders new gradcourse form' do
    render

    assert_select 'form[action=?][method=?]', gradcourses_path, 'post' do
      assert_select 'input[name=?]', 'gradcourse[code]'

      assert_select 'input[name=?]', 'gradcourse[title]'

      assert_select 'input[name=?]', 'gradcourse[units]'

      assert_select 'input[name=?]', 'gradcourse[semester_id]'

      assert_select 'input[name=?]', 'gradcourse[gradclass_id]'
    end
  end
end
