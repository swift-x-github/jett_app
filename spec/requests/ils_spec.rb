 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/ils", type: :request do
  # Il. As you add validations to Il, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Il.create! valid_attributes
      get ils_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      il = Il.create! valid_attributes
      get il_url(il)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_il_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      il = Il.create! valid_attributes
      get edit_il_url(il)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Il" do
        expect {
          post ils_url, params: { il: valid_attributes }
        }.to change(Il, :count).by(1)
      end

      it "redirects to the created il" do
        post ils_url, params: { il: valid_attributes }
        expect(response).to redirect_to(il_url(Il.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Il" do
        expect {
          post ils_url, params: { il: invalid_attributes }
        }.to change(Il, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post ils_url, params: { il: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested il" do
        il = Il.create! valid_attributes
        patch il_url(il), params: { il: new_attributes }
        il.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the il" do
        il = Il.create! valid_attributes
        patch il_url(il), params: { il: new_attributes }
        il.reload
        expect(response).to redirect_to(il_url(il))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        il = Il.create! valid_attributes
        patch il_url(il), params: { il: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested il" do
      il = Il.create! valid_attributes
      expect {
        delete il_url(il)
      }.to change(Il, :count).by(-1)
    end

    it "redirects to the ils list" do
      il = Il.create! valid_attributes
      delete il_url(il)
      expect(response).to redirect_to(ils_url)
    end
  end
end
