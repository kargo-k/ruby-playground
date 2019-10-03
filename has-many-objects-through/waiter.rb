class Waiter
	@@all = []

	attr_accessor :name, :exp

	def initialize(name, exp)
		@name = name
		@exp = exp
	end

	def self.avg_exp
		total = 0
		@@all.each {|x| average += x.exp}
		average = total/@@all.length
	end

	def customer_highest_tip
		Meal.all.select do |meal| 
			if meal.waiter == self.name
				if cust_tip_h.nil?
					cust_tip_h = {};
					if cust_tip_h[meal.customer].nil?
						cust_tip_h[meal.customer] = []
					end
				end
			end
			cust_tip_h[meal.customer] << meal.tip
		end
		return cust_tip_h.key(cust_tip.h.values.max)
	end 

	def customer_names
		customers = []
		@Meal.all.select do |meal|
			if meal.waiter == self.name
				customers << meal.customer
			end
		end
		return customers.uniq
	end

	def self.avg_tip
		waiter_exp_h = @@all.name.zip(@@all.exp).to_h
		most_exp_waiter = waiter_exp_h.key(waiter_exp_h.values.max)
		least_exp_waiter = waiter_exp_h.key(waiter_exp_h.values.min)

		waiters_meals = Meal.all.select {|meal| meal.waiter == most_exp_waiter}
		tip_sum = 0
		waiter_meals.each {|meal| sum += meal.tip}
		puts "the most experienced waiter makes an average of #{tip_sum/waiter_meals.length} in tips"

		waiters_meals = Meal.all.select {|meal| meal.waiter == least_exp_waiter}
		tip_sum = 0
		waiter_meals.each {|meal| sum += meal.tip}
		puts "the least experienced waiter makes an average of #{tip_sum/waiter_meals.length} in tips"
	end

end