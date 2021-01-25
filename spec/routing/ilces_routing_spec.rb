require "rails_helper"

RSpec.describe IlcesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/ilces").to route_to("ilces#index")
    end

    it "routes to #new" do
      expect(get: "/ilces/new").to route_to("ilces#new")
    end

    it "routes to #show" do
      expect(get: "/ilces/1").to route_to("ilces#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/ilces/1/edit").to route_to("ilces#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/ilces").to route_to("ilces#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/ilces/1").to route_to("ilces#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/ilces/1").to route_to("ilces#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/ilces/1").to route_to("ilces#destroy", id: "1")
    end
  end
end
