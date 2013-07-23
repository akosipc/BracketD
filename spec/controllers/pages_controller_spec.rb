require 'spec_helper'

describe PagesController do

  describe "GET index" do

    let(:scholar) { FactoryGirl.define(attributes_for :scholar) }

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

end
