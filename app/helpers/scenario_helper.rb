module ScenarioHelper

	def self.included( base )
		content = <<-EOF.strip!.squeeze!
		@<%= sc_type %>
		Scenario: <%= sc_title %>
			Given: <%= sc_given %>
			When: <%= sc_when %>
			Then: <%= sc_then %>
		EOF
		template_content = content.each_line.map do |line|
			line =~ /sc_type|sc_title/ ? line.lstrip : line.sub(/^\s+/, "  ")
		end.join

		base.send :define_method, :to_s do
			ERB.new( template_content ).result( binding )
		end
	end
end
