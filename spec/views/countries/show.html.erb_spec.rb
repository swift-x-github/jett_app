require 'rails_helper'

RSpec.describe "countries/show", type: :view do
  before(:each) do
    @country = assign(:country, Country.create!(
      name: "Name",
      description: "MyText",
      capital: "Capital",
      president: "President",
      currency_id: "Currency"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Capital/)
    expect(rendered).to match(/President/)
    expect(rendered).to match(/Currency/)
  end
end
