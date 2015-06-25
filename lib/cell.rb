class Cell
	def initialize(state, neighbors)
		@state = state
		@neighbors = neighbors
		@sum = neighbors.reduce(0) do |sum, x|
			sum + x
		end
	end

	def live
		if @state == 0 && @sum == 3
			return true
		elsif @state ==1 && @sum == 2 || @sum == 3
			return true
		elsif @state == 1 && @sum < 2
			return false
		elsif @state == 1 && @sum > 3
			return false
		else
			return false
		end
	end

end