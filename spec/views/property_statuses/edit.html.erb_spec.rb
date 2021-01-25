require 'rails_helper'

RSpec.describe "property_statuses/edit", type: :view do
  before(:each) do
    @property_status = assign(:property_status, PropertyStatus.create!(
      name: "MyString"
    ))
  end

  it "renders the edit property_status form" do
    render

    assert_select "form[action=?][method=?]", property_status_path(@property_status), "post" do

      assert_select "input[name=?]", "property_status[name]"
    end
  end
end
