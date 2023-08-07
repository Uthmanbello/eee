require 'rails_helper'

RSpec.describe 'gradclasses/new', type: :view do
  before(:each) do
    assign(:gradclass, Gradclass.new(
                         name: 'MyString',
                         rc: 'MyString',
                         semester: nil
                       ))
  end

  it 'renders new gradclass form' do
    render

    assert_select 'form[action=?][method=?]', gradclasses_path, 'post' do
      assert_select 'input[name=?]', 'gradclass[name]'

      assert_select 'input[name=?]', 'gradclass[rc]'

      assert_select 'input[name=?]', 'gradclass[semester_id]'
    end
  end
end
