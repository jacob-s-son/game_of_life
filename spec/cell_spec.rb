require 'spec_helper'

describe GameOfLife::Cell do
  subject { klass.new(0,0) }

  describe ".new" do
    it "should return an instance of cell with x,y given" do
      expect( subject ).to be_instance_of(klass)
    end
  end

  describe "#dead?" do
    it 'should be false' do
      expect( subject.dead? ).to be_false
    end
  end

  describe "#alive?" do
    it 'should be true' do
      expect( subject.alive? ).to be_true
    end
  end
end