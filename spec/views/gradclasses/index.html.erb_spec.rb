require 'rails_helper'

RSpec.describe 'gradclasses/index', type: :view do
  before(:each) do
    assign(:gradclasses, [
             Gradclass.create!(
               name: 'Name',
               rc: 'Rc',
               semester: nil
             ),
             Gradclass.create!(
               name: 'Name',
               rc: 'Rc',
               semester: nil
             )
           ])
  end

  it 'renders a list of gradclasses' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Rc'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
