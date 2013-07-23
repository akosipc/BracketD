require 'spec_helper'

describe ScholarsController do

  let(:scholar) { Scholar.create!(FactoryGirl.attributes_for :scholar) }

  describe "GET index" do

    before(:each) do
      get :index
    end

    it "assigns @scholars" do
      assigns(:scholars).should.eql? [:scholar]
    end

    it "renders the index template" do
      expect(response).to render_template("index")
    end

  end

  describe "GET show" do

    before(:each) do
      get :show, id: scholar.id
    end

    it "assigns @scholar" do
      assigns(:scholar).should.eql? :scholar
    end

    it "renders the index template" do
      expect(response).to render_template("show")
    end

  end

end
