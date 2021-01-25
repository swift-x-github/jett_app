require 'rails_helper'

RSpec.describe "ils/new", type: :view do
  before(:each) do
    assign(:il, Il.new(
      name: "MyString",
      description: "MyText",
      capital: "MyString",
      country: nil
    ))
  end

  it "renders new il form" do
    render

    assert_select "form[action=?][method=?]", ils_path, "post" do

      assert_select "input[name=?]", "il[name]"

      assert_select "textarea[name=?]", "il[description]"

      assert_select "input[name=?]", "il[capital]"

      assert_select "input[name=?]", "il[country_id]"
    end
  end
end
