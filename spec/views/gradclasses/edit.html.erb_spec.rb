require 'rails_helper'

RSpec.describe "gradclasses/edit", type: :view do
  let(:gradclass) {
    Gradclass.create!(
      name: "MyString",
      rc: "MyString",
      semester: nil
    )
  }

  before(:each) do
    assign(:gradclass, gradclass)
  end

  it "renders the edit gradclass form" do
    render

    assert_select "form[action=?][method=?]", gradclass_path(gradclass), "post" do

      assert_select "input[name=?]", "gradclass[name]"

      assert_select "input[name=?]", "gradclass[rc]"

      assert_select "input[name=?]", "gradclass[semester_id]"
    end
  end
end
