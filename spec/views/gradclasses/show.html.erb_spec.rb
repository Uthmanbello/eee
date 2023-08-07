require 'rails_helper'

RSpec.describe 'gradclasses/show', type: :view do
  before(:each) do
    assign(:gradclass, Gradclass.create!(
                         name: 'Name',
                         rc: 'Rc',
                         semester: nil
                       ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Rc/)
    expect(rendered).to match(//)
  end
end
