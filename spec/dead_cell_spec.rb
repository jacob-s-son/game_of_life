require 'spec_helper'

describe GameOfLife::DeadCell do
  describe '.new' do
    subject { klass.new(0, 0) }

    it 'should return an instance of dead cell' do
      expect( subject ).to be_instance_of( klass )
    end
  end

  describe "#dead?" do
    it 'should be true' do
      expect( subject.dead? ).to be_true
    end
  end

  describe "#alive?" do
    it 'should be false' do
      expect( subject.alive? ).to be_false
    end
  end
end