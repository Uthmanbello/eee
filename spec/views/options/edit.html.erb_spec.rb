require 'rails_helper'

RSpec.describe 'options/edit', type: :view do
  let(:option) do
    Option.create!(
      name: 'MyString',
      program: nil,
      type: ''
    )
  end

  before(:each) do
    assign(:option, option)
  end

  it 'renders the edit option form' do
    render

    assert_select 'form[action=?][method=?]', option_path(option), 'post' do
      assert_select 'input[name=?]', 'option[name]'

      assert_select 'input[name=?]', 'option[program_id]'

      assert_select 'input[name=?]', 'option[type]'
    end
  end
end
