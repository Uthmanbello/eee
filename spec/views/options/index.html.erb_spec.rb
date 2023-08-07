require 'rails_helper'

RSpec.describe 'options/index', type: :view do
  before(:each) do
    assign(:options, [
             Option.create!(
               name: 'Name',
               program: nil,
               type: 'Type'
             ),
             Option.create!(
               name: 'Name',
               program: nil,
               type: 'Type'
             )
           ])
  end

  it 'renders a list of options' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Type'.to_s), count: 2
  end
end
