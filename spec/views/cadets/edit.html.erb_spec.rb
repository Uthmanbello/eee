require 'rails_helper'

RSpec.describe "cadets/edit", type: :view do
  let(:cadet) {
    Cadet.create!(
      name: "MyString",
      service: "MyString",
      num: 1,
      gradclass: nil
    )
  }

  before(:each) do
    assign(:cadet, cadet)
  end

  it "renders the edit cadet form" do
    render

    assert_select "form[action=?][method=?]", cadet_path(cadet), "post" do

      assert_select "input[name=?]", "cadet[name]"

      assert_select "input[name=?]", "cadet[service]"

      assert_select "input[name=?]", "cadet[num]"

      assert_select "input[name=?]", "cadet[gradclass_id]"
    end
  end
end
