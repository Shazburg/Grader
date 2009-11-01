#!/usr/bin/ruby
# grader.rb - a quick app to generate score cards

base_score = 50
question = 0

puts "What is the total number of questions? "
total_questions = gets.to_i

iterator = base_score.to_f / total_questions.to_f

while question <= total_questions do
	current_score = base_score + (question * iterator)
	puts question.to_s + "\t" + current_score.round.to_s
	question += 1
end
