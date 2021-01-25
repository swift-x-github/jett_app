require 'rails_helper'

RSpec.describe "contactmessages/index", type: :view do
  before(:each) do
    assign(:contactmessages, [
      Contactmessage.create!(
        first_name: "First Name",
        last_name: "Last Name",
        email: "Email",
        subject: "Subject",
        message: "MyText",
        status: 2
      ),
      Contactmessage.create!(
        first_name: "First Name",
        last_name: "Last Name",
        email: "Email",
        subject: "Subject",
        message: "MyText",
        status: 2
      )
    ])
  end

  it "renders a list of contactmessages" do
    render
    assert_select "tr>td", text: "First Name".to_s, count: 2
    assert_select "tr>td", text: "Last Name".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Subject".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
