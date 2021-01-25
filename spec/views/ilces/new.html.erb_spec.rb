require 'rails_helper'

RSpec.describe "ilces/new", type: :view do
  before(:each) do
    assign(:ilce, Ilce.new(
      name: "MyString",
      description: "MyText",
      il: nil
    ))
  end

  it "renders new ilce form" do
    render

    assert_select "form[action=?][method=?]", ilces_path, "post" do

      assert_select "input[name=?]", "ilce[name]"

      assert_select "textarea[name=?]", "ilce[description]"

      assert_select "input[name=?]", "ilce[il_id]"
    end
  end
end
