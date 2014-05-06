module GameOfLife
  class Cell < Struct.new(:y, :x)
    def dead?
      false
    end

    def alive?
      true
    end
  end
end