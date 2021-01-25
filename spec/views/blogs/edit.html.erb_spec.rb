require 'rails_helper'

RSpec.describe "blogs/edit", type: :view do
  before(:each) do
    @blog = assign(:blog, Blog.create!(
      name: "MyString",
      description: "MyText",
      account: nil
    ))
  end

  it "renders the edit blog form" do
    render

    assert_select "form[action=?][method=?]", blog_path(@blog), "post" do

      assert_select "input[name=?]", "blog[name]"

      assert_select "textarea[name=?]", "blog[description]"

      assert_select "input[name=?]", "blog[account_id]"
    end
  end
end
