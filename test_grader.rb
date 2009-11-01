#!/usr/bin/ruby
# Test for grader.rb

require "test/unit"

class Test_grader < Test::Unit::TestCase
	def test_fail
		assert(false, "Assertion is false.")
	end
end
