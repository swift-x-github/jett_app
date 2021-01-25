require 'rails_helper'

RSpec.describe "countries/index", type: :view do
  before(:each) do
    assign(:countries, [
      Country.create!(
        name: "Name",
        description: "MyText",
        capital: "Capital",
        president: "President",
        currency_id: "Currency"
      ),
      Country.create!(
        name: "Name",
        description: "MyText",
        capital: "Capital",
        president: "President",
        currency_id: "Currency"
      )
    ])
  end

  it "renders a list of countries" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Capital".to_s, count: 2
    assert_select "tr>td", text: "President".to_s, count: 2
    assert_select "tr>td", text: "Currency".to_s, count: 2
  end
end
