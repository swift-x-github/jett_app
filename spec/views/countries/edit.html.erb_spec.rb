require 'rails_helper'

RSpec.describe "countries/edit", type: :view do
  before(:each) do
    @country = assign(:country, Country.create!(
      name: "MyString",
      description: "MyText",
      capital: "MyString",
      president: "MyString",
      currency_id: "MyString"
    ))
  end

  it "renders the edit country form" do
    render

    assert_select "form[action=?][method=?]", country_path(@country), "post" do

      assert_select "input[name=?]", "country[name]"

      assert_select "textarea[name=?]", "country[description]"

      assert_select "input[name=?]", "country[capital]"

      assert_select "input[name=?]", "country[president]"

      assert_select "input[name=?]", "country[currency_id]"
    end
  end
end
