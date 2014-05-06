module GameOfLife
  class ApplyWorldRules

    class << self
      def apply( world )
        new(world).apply
      end
    end

    def initialize(world)
      @world = world
    end

    def apply
      @world.cells[ '0,2' ] = DeadCell.new( 0,2 )
      @world
    end
  end
end