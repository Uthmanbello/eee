require 'rails_helper'

RSpec.describe 'gradstudents/edit', type: :view do
  let(:gradstudent) do
    Gradstudent.create!(
      name: 'MyString',
      service: 'MyString',
      level: 'MyString',
      num: 1
    )
  end

  before(:each) do
    assign(:gradstudent, gradstudent)
  end

  it 'renders the edit gradstudent form' do
    render

    assert_select 'form[action=?][method=?]', gradstudent_path(gradstudent), 'post' do
      assert_select 'input[name=?]', 'gradstudent[name]'

      assert_select 'input[name=?]', 'gradstudent[service]'

      assert_select 'input[name=?]', 'gradstudent[level]'

      assert_select 'input[name=?]', 'gradstudent[num]'
    end
  end
end
