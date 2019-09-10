require "rails_helper"

RSpec.describe ClockInsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/clock_ins").to route_to("clock_ins#index")
    end

    it "routes to #new" do
      expect(:get => "/clock_ins/new").to route_to("clock_ins#new")
    end

    it "routes to #show" do
      expect(:get => "/clock_ins/1").to route_to("clock_ins#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/clock_ins/1/edit").to route_to("clock_ins#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/clock_ins").to route_to("clock_ins#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/clock_ins/1").to route_to("clock_ins#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/clock_ins/1").to route_to("clock_ins#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/clock_ins/1").to route_to("clock_ins#destroy", :id => "1")
    end
  end
end
