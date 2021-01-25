require 'rails_helper'

RSpec.describe "contactmessages/new", type: :view do
  before(:each) do
    assign(:contactmessage, Contactmessage.new(
      first_name: "MyString",
      last_name: "MyString",
      email: "MyString",
      subject: "MyString",
      message: "MyText",
      status: 1
    ))
  end

  it "renders new contactmessage form" do
    render

    assert_select "form[action=?][method=?]", contactmessages_path, "post" do

      assert_select "input[name=?]", "contactmessage[first_name]"

      assert_select "input[name=?]", "contactmessage[last_name]"

      assert_select "input[name=?]", "contactmessage[email]"

      assert_select "input[name=?]", "contactmessage[subject]"

      assert_select "textarea[name=?]", "contactmessage[message]"

      assert_select "input[name=?]", "contactmessage[status]"
    end
  end
end
