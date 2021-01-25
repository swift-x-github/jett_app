require 'rails_helper'

RSpec.describe "mahales/show", type: :view do
  before(:each) do
    @mahale = assign(:mahale, Mahale.create!(
      name: "Name",
      description: "MyText",
      ilce: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
