require 'rails_helper'

RSpec.describe "blogs/new", type: :view do
  before(:each) do
    assign(:blog, Blog.new(
      name: "MyString",
      description: "MyText",
      account: nil
    ))
  end

  it "renders new blog form" do
    render

    assert_select "form[action=?][method=?]", blogs_path, "post" do

      assert_select "input[name=?]", "blog[name]"

      assert_select "textarea[name=?]", "blog[description]"

      assert_select "input[name=?]", "blog[account_id]"
    end
  end
end
