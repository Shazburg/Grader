#!/usr/bin/ruby
# Test for grader.rb

require "test/unit"
require "grader"

class Test_grader < Test::Unit::TestCase

	def setup
		@object = Grader.new
	end

	def test_get_questions_total
		foo = @object.get_questions_total

		assert_not_equal 0, foo
		assert_kind_of Integer, foo
	end

	def test_special_ed_score
		foo = @object.special_ed_score(78)

		assert_not_nil foo
	end
end
