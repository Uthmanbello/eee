require 'rails_helper'

RSpec.describe 'gradcourses/edit', type: :view do
  let(:gradcourse) do
    Gradcourse.create!(
      code: 'MyString',
      title: 'MyString',
      units: 1,
      semester: nil,
      gradclass: nil
    )
  end

  before(:each) do
    assign(:gradcourse, gradcourse)
  end

  it 'renders the edit gradcourse form' do
    render

    assert_select 'form[action=?][method=?]', gradcourse_path(gradcourse), 'post' do
      assert_select 'input[name=?]', 'gradcourse[code]'

      assert_select 'input[name=?]', 'gradcourse[title]'

      assert_select 'input[name=?]', 'gradcourse[units]'

      assert_select 'input[name=?]', 'gradcourse[semester_id]'

      assert_select 'input[name=?]', 'gradcourse[gradclass_id]'
    end
  end
end
