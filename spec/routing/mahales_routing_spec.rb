require "rails_helper"

RSpec.describe MahalesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/mahales").to route_to("mahales#index")
    end

    it "routes to #new" do
      expect(get: "/mahales/new").to route_to("mahales#new")
    end

    it "routes to #show" do
      expect(get: "/mahales/1").to route_to("mahales#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/mahales/1/edit").to route_to("mahales#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/mahales").to route_to("mahales#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/mahales/1").to route_to("mahales#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/mahales/1").to route_to("mahales#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/mahales/1").to route_to("mahales#destroy", id: "1")
    end
  end
end
