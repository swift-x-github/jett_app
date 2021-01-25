require 'rails_helper'

RSpec.describe "mahales/edit", type: :view do
  before(:each) do
    @mahale = assign(:mahale, Mahale.create!(
      name: "MyString",
      description: "MyText",
      ilce: nil
    ))
  end

  it "renders the edit mahale form" do
    render

    assert_select "form[action=?][method=?]", mahale_path(@mahale), "post" do

      assert_select "input[name=?]", "mahale[name]"

      assert_select "textarea[name=?]", "mahale[description]"

      assert_select "input[name=?]", "mahale[ilce_id]"
    end
  end
end
