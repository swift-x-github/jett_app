require 'rails_helper'

RSpec.describe "ilces/index", type: :view do
  before(:each) do
    assign(:ilces, [
      Ilce.create!(
        name: "Name",
        description: "MyText",
        il: nil
      ),
      Ilce.create!(
        name: "Name",
        description: "MyText",
        il: nil
      )
    ])
  end

  it "renders a list of ilces" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
