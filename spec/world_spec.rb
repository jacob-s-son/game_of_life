require 'spec_helper'

describe GameOfLife::World do
  let(:fields) {
    [
      [0,0,1],
      [0,1,1],
      [0,0,1]
    ]
  }

  describe '.new' do
    subject { klass.new }

    it 'should return an instance of world' do
      expect( subject ).to be_instance_of(klass )
    end
  end

  describe '.spawn' do
    subject { klass.spawn( fields ) }

    it 'cells at "0,2", "1,1", "1,2", "2,2" are alive' do
      [ [0,2], [1,1], [1,2], [2,2] ].each do |key|
        expect( subject.cell_at( *key ).alive? ).to be_true
      end
    end

    it 'cells at "0,0", "2,1" should be dead' do
      expect(subject.cell_at( 0,0 ).dead? ).to be_true
      expect(subject.cell_at( 2,1 ).dead? ).to be_true
    end
  end

  describe "#cell_at" do
    subject { klass.spawn( fields ) }

    it "should return a live cell at 0,2" do
      expect( subject.cell_at(0,2).alive?).to be_true
    end

    it "should return a dead cell at 2,1" do
      expect( subject.cell_at(2,1).dead? ).to be_true
    end
  end
end