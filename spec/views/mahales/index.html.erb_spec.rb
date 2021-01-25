require 'rails_helper'

RSpec.describe "mahales/index", type: :view do
  before(:each) do
    assign(:mahales, [
      Mahale.create!(
        name: "Name",
        description: "MyText",
        ilce: nil
      ),
      Mahale.create!(
        name: "Name",
        description: "MyText",
        ilce: nil
      )
    ])
  end

  it "renders a list of mahales" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
