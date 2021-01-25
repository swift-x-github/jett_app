require 'rails_helper'

RSpec.describe "ils/index", type: :view do
  before(:each) do
    assign(:ils, [
      Il.create!(
        name: "Name",
        description: "MyText",
        capital: "Capital",
        country: nil
      ),
      Il.create!(
        name: "Name",
        description: "MyText",
        capital: "Capital",
        country: nil
      )
    ])
  end

  it "renders a list of ils" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Capital".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
