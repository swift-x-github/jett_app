require 'rails_helper'

RSpec.describe "agents/show", type: :view do
  before(:each) do
    @agent = assign(:agent, Agent.create!(
      shortname: "Shortname",
      fullname: "Fullname",
      description: "MyText",
      address: "Address",
      email: "Email",
      website: "Website",
      tel: "Tel",
      country_id: 2,
      balance: 3.5,
      account: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Shortname/)
    expect(rendered).to match(/Fullname/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Tel/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(//)
  end
end
