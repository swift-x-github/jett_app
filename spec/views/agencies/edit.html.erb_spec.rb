require 'rails_helper'

RSpec.describe "agencies/edit", type: :view do
  before(:each) do
    @agency = assign(:agency, Agency.create!(
      name: "MyString",
      description: "MyText",
      address: "MyString",
      email: "MyString",
      website: "MyString",
      tel: "MyString",
      country_id: "MyString",
      balance: 1.5,
      account: nil
    ))
  end

  it "renders the edit agency form" do
    render

    assert_select "form[action=?][method=?]", agency_path(@agency), "post" do

      assert_select "input[name=?]", "agency[name]"

      assert_select "textarea[name=?]", "agency[description]"

      assert_select "input[name=?]", "agency[address]"

      assert_select "input[name=?]", "agency[email]"

      assert_select "input[name=?]", "agency[website]"

      assert_select "input[name=?]", "agency[tel]"

      assert_select "input[name=?]", "agency[country_id]"

      assert_select "input[name=?]", "agency[balance]"

      assert_select "input[name=?]", "agency[account_id]"
    end
  end
end
