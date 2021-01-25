require 'rails_helper'

RSpec.describe "property_statuses/index", type: :view do
  before(:each) do
    assign(:property_statuses, [
      PropertyStatus.create!(
        name: "Name"
      ),
      PropertyStatus.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of property_statuses" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
