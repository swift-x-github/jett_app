require 'rails_helper'

RSpec.describe "ils/edit", type: :view do
  before(:each) do
    @il = assign(:il, Il.create!(
      name: "MyString",
      description: "MyText",
      capital: "MyString",
      country: nil
    ))
  end

  it "renders the edit il form" do
    render

    assert_select "form[action=?][method=?]", il_path(@il), "post" do

      assert_select "input[name=?]", "il[name]"

      assert_select "textarea[name=?]", "il[description]"

      assert_select "input[name=?]", "il[capital]"

      assert_select "input[name=?]", "il[country_id]"
    end
  end
end
