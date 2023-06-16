require 'rails_helper'

RSpec.describe "cadets/index", type: :view do
  before(:each) do
    assign(:cadets, [
      Cadet.create!(
        name: "Name",
        service: "Service",
        num: 2,
        gradclass: nil
      ),
      Cadet.create!(
        name: "Name",
        service: "Service",
        num: 2,
        gradclass: nil
      )
    ])
  end

  it "renders a list of cadets" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Service".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
