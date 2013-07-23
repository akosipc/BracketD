require 'spec_helper'

describe Scholar do

  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :school }
  it { should validate_presence_of :status }
  it { should validate_presence_of :amount }
  it { should validate_presence_of :age }

  it { should validate_numericality_of :amount }
  it { should validate_numericality_of :age }

  describe "methods" do


    let(:scholar) { Scholar.create!(FactoryGirl.attributes_for :scholar) }

    describe "full_name" do

      it "returns the full name of the scholar" do

        scholar.full_name.should.eql? "#{scholar.first_name} #{scholar.last_name}"

      end

    end

    describe "paid_amount" do

      it "returns the total funded amount for this scholar" do

        scholar.paid_amount.should.eql? 1000

      end

    end

  end

end
