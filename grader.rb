#!/usr/bin/ruby
# grader.rb - a quick app to generate score cards

class Grader
	def initialize
		@base_score = 50
		@current_score = 0
		@total_questions = 0
		@iterator = 0
		@special_ed_score = 0
	end

	def get_total_questions
		puts "What is the total number of questions?"
		@total_questions = gets.to_i
	end

	def get_special_ed_score
		score_list = [100,100,100,99,99,98,98,97,96,95,94,93,93,93,92,92,91,90,89,88,87,86,85,84,83,82,81,80,79,78,77,76,76,76,75,75,74,73,72,71,70,"F","F","F","F","F","F","F","F","F","F"]

		score_index = (100 - @current_score.round)
		@special_ed_score = score_list.fetch(score_index).to_s
	end

	def get_iterator
		@iterator = @base_score.to_f / @total_questions.to_f
	end

	def get_current_score
		question = 0

		while question <= @total_questions do
			@current_score = @base_score + (question * @iterator)
			question += 1
		end
	end

	def scores

		puts "\nCorrect\tScore\tSpecial Ed"


	end

end

