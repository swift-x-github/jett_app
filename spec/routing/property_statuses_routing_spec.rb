require "rails_helper"

RSpec.describe PropertyStatusesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/property_statuses").to route_to("property_statuses#index")
    end

    it "routes to #new" do
      expect(get: "/property_statuses/new").to route_to("property_statuses#new")
    end

    it "routes to #show" do
      expect(get: "/property_statuses/1").to route_to("property_statuses#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/property_statuses/1/edit").to route_to("property_statuses#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/property_statuses").to route_to("property_statuses#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/property_statuses/1").to route_to("property_statuses#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/property_statuses/1").to route_to("property_statuses#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/property_statuses/1").to route_to("property_statuses#destroy", id: "1")
    end
  end
end
