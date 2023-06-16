require "rails_helper"

RSpec.describe GradstudentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/gradstudents").to route_to("gradstudents#index")
    end

    it "routes to #new" do
      expect(get: "/gradstudents/new").to route_to("gradstudents#new")
    end

    it "routes to #show" do
      expect(get: "/gradstudents/1").to route_to("gradstudents#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/gradstudents/1/edit").to route_to("gradstudents#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/gradstudents").to route_to("gradstudents#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/gradstudents/1").to route_to("gradstudents#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/gradstudents/1").to route_to("gradstudents#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/gradstudents/1").to route_to("gradstudents#destroy", id: "1")
    end
  end
end
