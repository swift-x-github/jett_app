require 'rails_helper'

RSpec.describe "ils/show", type: :view do
  before(:each) do
    @il = assign(:il, Il.create!(
      name: "Name",
      description: "MyText",
      capital: "Capital",
      country: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Capital/)
    expect(rendered).to match(//)
  end
end
