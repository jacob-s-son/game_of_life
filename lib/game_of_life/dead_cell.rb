module GameOfLife
  class DeadCell < Struct.new(:y, :x)
    def dead?
      true
    end

    def alive?
      false
    end
  end
end