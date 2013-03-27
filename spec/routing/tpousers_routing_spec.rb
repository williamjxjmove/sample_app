require "spec_helper"

describe TpousersController do
  describe "routing" do

    it "routes to #index" do
      get("/tpousers").should route_to("tpousers#index")
    end

    it "routes to #new" do
      get("/tpousers/new").should route_to("tpousers#new")
    end

    it "routes to #show" do
      get("/tpousers/1").should route_to("tpousers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tpousers/1/edit").should route_to("tpousers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tpousers").should route_to("tpousers#create")
    end

    it "routes to #update" do
      put("/tpousers/1").should route_to("tpousers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tpousers/1").should route_to("tpousers#destroy", :id => "1")
    end

  end
end
