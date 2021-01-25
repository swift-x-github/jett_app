require 'rails_helper'

RSpec.describe "mahales/new", type: :view do
  before(:each) do
    assign(:mahale, Mahale.new(
      name: "MyString",
      description: "MyText",
      ilce: nil
    ))
  end

  it "renders new mahale form" do
    render

    assert_select "form[action=?][method=?]", mahales_path, "post" do

      assert_select "input[name=?]", "mahale[name]"

      assert_select "textarea[name=?]", "mahale[description]"

      assert_select "input[name=?]", "mahale[ilce_id]"
    end
  end
end
