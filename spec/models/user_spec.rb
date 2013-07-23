require 'spec_helper'

describe User do

  describe "methods" do

    let(:user) { User.create!(FactoryGirl.attributes_for :user) }

    describe "full_name" do

      it "returns the full name of the user" do

        user.full_name.should.eql? "#{user.first_name} #{user.last_name}"

      end

    end

  end

end
