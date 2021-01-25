require 'rails_helper'

RSpec.describe "property_statuses/new", type: :view do
  before(:each) do
    assign(:property_status, PropertyStatus.new(
      name: "MyString"
    ))
  end

  it "renders new property_status form" do
    render

    assert_select "form[action=?][method=?]", property_statuses_path, "post" do

      assert_select "input[name=?]", "property_status[name]"
    end
  end
end
