require 'rails_helper'

RSpec.describe 'cadets/new', type: :view do
  before(:each) do
    assign(:cadet, Cadet.new(
                     name: 'MyString',
                     service: 'MyString',
                     num: 1,
                     gradclass: nil
                   ))
  end

  it 'renders new cadet form' do
    render

    assert_select 'form[action=?][method=?]', cadets_path, 'post' do
      assert_select 'input[name=?]', 'cadet[name]'

      assert_select 'input[name=?]', 'cadet[service]'

      assert_select 'input[name=?]', 'cadet[num]'

      assert_select 'input[name=?]', 'cadet[gradclass_id]'
    end
  end
end
