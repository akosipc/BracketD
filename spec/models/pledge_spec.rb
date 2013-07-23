require 'spec_helper'

describe Pledge do

  it { should validate_presence_of :email }
  it { should validate_presence_of :amount }
  it { should validate_presence_of :status }

  it { should validate_numericality_of :amount }

  it { should_not allow_value("blah").for :email }
end
