require 'rails_helper'

RSpec.describe "contactmessages/edit", type: :view do
  before(:each) do
    @contactmessage = assign(:contactmessage, Contactmessage.create!(
      first_name: "MyString",
      last_name: "MyString",
      email: "MyString",
      subject: "MyString",
      message: "MyText",
      status: 1
    ))
  end

  it "renders the edit contactmessage form" do
    render

    assert_select "form[action=?][method=?]", contactmessage_path(@contactmessage), "post" do

      assert_select "input[name=?]", "contactmessage[first_name]"

      assert_select "input[name=?]", "contactmessage[last_name]"

      assert_select "input[name=?]", "contactmessage[email]"

      assert_select "input[name=?]", "contactmessage[subject]"

      assert_select "textarea[name=?]", "contactmessage[message]"

      assert_select "input[name=?]", "contactmessage[status]"
    end
  end
end
