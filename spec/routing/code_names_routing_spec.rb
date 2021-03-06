require "rails_helper"

RSpec.describe CodeNamesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/code_names").to route_to("code_names#index")
    end

    it "routes to #new" do
      expect(:get => "/code_names/new").to route_to("code_names#new")
    end

    it "routes to #show" do
      expect(:get => "/code_names/1").to route_to("code_names#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/code_names/1/edit").to route_to("code_names#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/code_names").to route_to("code_names#create")
    end

    it "routes to #update" do
      expect(:put => "/code_names/1").to route_to("code_names#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/code_names/1").to route_to("code_names#destroy", :id => "1")
    end

  end
end
