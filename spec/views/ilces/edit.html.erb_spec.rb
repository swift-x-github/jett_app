require 'rails_helper'

RSpec.describe "ilces/edit", type: :view do
  before(:each) do
    @ilce = assign(:ilce, Ilce.create!(
      name: "MyString",
      description: "MyText",
      il: nil
    ))
  end

  it "renders the edit ilce form" do
    render

    assert_select "form[action=?][method=?]", ilce_path(@ilce), "post" do

      assert_select "input[name=?]", "ilce[name]"

      assert_select "textarea[name=?]", "ilce[description]"

      assert_select "input[name=?]", "ilce[il_id]"
    end
  end
end
