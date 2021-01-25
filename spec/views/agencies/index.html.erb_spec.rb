require 'rails_helper'

RSpec.describe "agencies/index", type: :view do
  before(:each) do
    assign(:agencies, [
      Agency.create!(
        name: "Name",
        description: "MyText",
        address: "Address",
        email: "Email",
        website: "Website",
        tel: "Tel",
        country_id: "Country",
        balance: 2.5,
        account: nil
      ),
      Agency.create!(
        name: "Name",
        description: "MyText",
        address: "Address",
        email: "Email",
        website: "Website",
        tel: "Tel",
        country_id: "Country",
        balance: 2.5,
        account: nil
      )
    ])
  end

  it "renders a list of agencies" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Website".to_s, count: 2
    assert_select "tr>td", text: "Tel".to_s, count: 2
    assert_select "tr>td", text: "Country".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
