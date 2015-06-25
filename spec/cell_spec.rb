require_relative("../lib/cell.rb")

RSpec.describe Cell do 
	

    it "will die if it is a live cell that has fewer than 2 live neighbours" do
      cell1 = Cell.new(1, [0,0,0,0,0,0,0,1])
      expect(cell1.live).to eq(false)
    end

    it "will live on to the next generation if it is a live cell with two live neighbors " do
      cell1 = Cell.new(1, [0,0,0,0,0,0,1,1])
      expect(cell1.live).to eq(true)
    end
    it "will live on to the next generation if it is a live cell with three live neighbors " do
      cell1 = Cell.new(1, [0,0,0,0,0,1,1,1])
      expect(cell1.live).to eq(true)
  	end
    it "will die if it is a live cell that has more than 3 live neighbours" do
      cell1 = Cell.new(1, [0,0,0,0,1,1,1,1])
      expect(cell1.live).to eq(false)
    end
    it "will become alive with exactly three 3 live neighbors if the cell is dead" do
      cell1 = Cell.new(1, [0,0,0,0,0,1,1,1])
      expect(cell1.live).to eq(true)
    end

end