# A company has six hiring positions with more people wanting jobs than the
# number of available positions.

# they will allow people to work in three-month intervals. 

# The first five people on the waiting list will be hired
# in the order that they are on the waiting list.  

# The first six people will keep these positions for three months.  At the end of three months, the manager will roll a dice to determine the number of people who will lose their jobs. 

# The company will use the policy of last-hired-first-fired.  For example,if the dice roll is 3, the last 3 people hired will lose their jobs to the first 3 people on the waiting list. People losing their jobs will be placed on the back of the waiting list in the order that they are fired. This process will continue for every three-month interval.

require './Stack.rb'
require './Queue.rb'

class JobSimulation
	def initialize
		@waiting = Stack.new
		@working = Queue.new

		6.times do |i|
			@working.enqueue("ID " + (i+1).to_s)
			@waiting.push("ID " + (i+7).to_s)
		end
	end

	def fire
		roll = rand(1..6)
		puts "Rolled a #{roll}"

		roll.times do
			@waiting.push(@working.dequeue)
		end

		roll.times do
			@working.enqueue(@waiting.pop)
		end
	end

	def to_s
		puts "Working: #{@working.inspect}"
		puts "Waiting: #{@waiting.inspect}"
	end
end

js = JobSimulation.new
js.to_s

js.fire
js.to_s
