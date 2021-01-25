require 'rails_helper'

RSpec.describe "ilces/show", type: :view do
  before(:each) do
    @ilce = assign(:ilce, Ilce.create!(
      name: "Name",
      description: "MyText",
      il: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
