class Scenario
	extend ActiveModel::Naming
	include ActiveModel::Conversion
	include ScenarioHelper

	attr_accessor :sc_type, :sc_title, :sc_given, :sc_when, :sc_then

	def initialize( attributes = {} )
		attributes.each_pair do |key, value|
			send "#{key}=", value
		end

	end

	def persisted?
    false
  end

  def save
		File.open("features_created/test.feature", "a") do |file|
			file.puts to_s
		end
  end

end