require 'spec_helper'

describe GameOfLife::ApplyWorldRules do

  let(:world) {
    GameOfLife::World.spawn([
      [0,0,1,0],
      [0,0,1,0],
      [0,0,1,0]
    ])
  }

  describe '.new' do
    subject { klass.new(world) }

    it 'should return an instance of world' do
      expect( subject ).to be_instance_of(klass )
    end
  end


  describe ".apply" do
    context "Any live cell with fewer than two live neighbours dies, as if caused by under-population." do
      subject { klass.apply(world) }

      it "cell at 0,2 should die" do
        expect( subject.cell_at(0,2).dead? ).to be_true
      end

      it "cell at 1,2 should die" do
        expect( subject.cell_at(0,2).dead? ).to be_true
      end
    end
  end
end