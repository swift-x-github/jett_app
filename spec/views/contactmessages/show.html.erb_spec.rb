require 'rails_helper'

RSpec.describe "contactmessages/show", type: :view do
  before(:each) do
    @contactmessage = assign(:contactmessage, Contactmessage.create!(
      first_name: "First Name",
      last_name: "Last Name",
      email: "Email",
      subject: "Subject",
      message: "MyText",
      status: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Subject/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
