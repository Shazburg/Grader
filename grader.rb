#!/usr/bin/ruby
# grader.rb - a quick app to generate score cards

base_score = 50
question = 0

puts "What is the total number of questions?"
total_questions = gets.to_i

puts "\nCorrect\tScore\tSpecial Ed"

special_ed = [100,100,100,99,99,98,98,97,96,95,94,93,93,93,92,92,91,90,89,88,87,86,85,84,83,82,81,80,79,78,77,76,76,76,75,75,74,73,72,71,70,"F","F","F","F","F","F","F","F","F","F"]

iterator = base_score.to_f / total_questions.to_f

while question <= total_questions do
	current_score = base_score + (question * iterator)
	sped_score = (100 - current_score.round)
	puts question.to_s + "\t" + current_score.round.to_s + "\t" + special_ed.fetch(sped_score).to_s
	question += 1
end
