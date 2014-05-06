module GameOfLife
  class World
    attr_reader :cells

    class << self
      def spawn(fields)
        new(fields)
      end
    end

    def initialize(fields=[])
      @cells = fields.each_with_index.each_with_object({}) do |( line, line_idx), hsh|
        line.each_with_index do |col, col_idx|
          hsh["#{line_idx},#{col_idx}"] = Cell.new( line_idx, col_idx ) if col == 1
        end
      end
    end

    def cell_at( line, col )
      @cells[ "#{line},#{col}" ] || DeadCell.new(line,col)
    end
  end
end