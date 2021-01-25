require 'rails_helper'

RSpec.describe "agents/index", type: :view do
  before(:each) do
    assign(:agents, [
      Agent.create!(
        shortname: "Shortname",
        fullname: "Fullname",
        description: "MyText",
        address: "Address",
        email: "Email",
        website: "Website",
        tel: "Tel",
        country_id: 2,
        balance: 3.5,
        account: nil
      ),
      Agent.create!(
        shortname: "Shortname",
        fullname: "Fullname",
        description: "MyText",
        address: "Address",
        email: "Email",
        website: "Website",
        tel: "Tel",
        country_id: 2,
        balance: 3.5,
        account: nil
      )
    ])
  end

  it "renders a list of agents" do
    render
    assert_select "tr>td", text: "Shortname".to_s, count: 2
    assert_select "tr>td", text: "Fullname".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Website".to_s, count: 2
    assert_select "tr>td", text: "Tel".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
