require "rails_helper"

RSpec.describe LecturersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/lecturers").to route_to("lecturers#index")
    end

    it "routes to #new" do
      expect(get: "/lecturers/new").to route_to("lecturers#new")
    end

    it "routes to #show" do
      expect(get: "/lecturers/1").to route_to("lecturers#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/lecturers/1/edit").to route_to("lecturers#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/lecturers").to route_to("lecturers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/lecturers/1").to route_to("lecturers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/lecturers/1").to route_to("lecturers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/lecturers/1").to route_to("lecturers#destroy", id: "1")
    end
  end
end
