class Scenario

	attr_accessor :type, :feature, :given, :when, :then

	def initialize( attributes = {} )
		attributes.each_pair do |key, value|
			send "@#{key}=", value
		end

	end

end