require 'rails_helper'

RSpec.describe "agencies/show", type: :view do
  before(:each) do
    @agency = assign(:agency, Agency.create!(
      name: "Name",
      description: "MyText",
      address: "Address",
      email: "Email",
      website: "Website",
      tel: "Tel",
      country_id: "Country",
      balance: 2.5,
      account: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Tel/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(//)
  end
end
