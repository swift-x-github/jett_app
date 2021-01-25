require 'rails_helper'

RSpec.describe "property_statuses/show", type: :view do
  before(:each) do
    @property_status = assign(:property_status, PropertyStatus.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
