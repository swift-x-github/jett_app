require 'rails_helper'

RSpec.describe "agents/new", type: :view do
  before(:each) do
    assign(:agent, Agent.new(
      shortname: "MyString",
      fullname: "MyString",
      description: "MyText",
      address: "MyString",
      email: "MyString",
      website: "MyString",
      tel: "MyString",
      country_id: 1,
      balance: 1.5,
      account: nil
    ))
  end

  it "renders new agent form" do
    render

    assert_select "form[action=?][method=?]", agents_path, "post" do

      assert_select "input[name=?]", "agent[shortname]"

      assert_select "input[name=?]", "agent[fullname]"

      assert_select "textarea[name=?]", "agent[description]"

      assert_select "input[name=?]", "agent[address]"

      assert_select "input[name=?]", "agent[email]"

      assert_select "input[name=?]", "agent[website]"

      assert_select "input[name=?]", "agent[tel]"

      assert_select "input[name=?]", "agent[country_id]"

      assert_select "input[name=?]", "agent[balance]"

      assert_select "input[name=?]", "agent[account_id]"
    end
  end
end
