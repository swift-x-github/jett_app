require "rails_helper"

RSpec.describe IlsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/ils").to route_to("ils#index")
    end

    it "routes to #new" do
      expect(get: "/ils/new").to route_to("ils#new")
    end

    it "routes to #show" do
      expect(get: "/ils/1").to route_to("ils#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/ils/1/edit").to route_to("ils#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/ils").to route_to("ils#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/ils/1").to route_to("ils#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/ils/1").to route_to("ils#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/ils/1").to route_to("ils#destroy", id: "1")
    end
  end
end
