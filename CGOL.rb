#conways_game_of_life.rb

# Tasks:
# 01. Display a Matrix of 10 x 10
# 02. Insert random elements into the Matrix (any single digit) and display it

def grid(10)
	@display = Array.new(10) { Array.new(10) {rand(5)} }
	@display.each{|row| puts row.inspect}
end

def find_cells
 @display.each do |row|
 	row.each do |cell|
 	end
 end
 end


 	if cell == 1
display.each_with_index do |row, row_index|
row.each_with_index do |column, column_index|


 		else
 		end



# 03. Ask if user wants a new random matrix and display if user said yes
puts "Would you like to play again?"
puts "1. Yes"
puts "2. No"

play_again_answer = gets.chomp

# Loop, to play again after round is finished
while answer == "1" || "2"

	if play_again_answer == "1"
	puts "what size of board would you like to use?"
	puts "1. small, 10x10"
	puts "2. Medium, 15x50"
	puts "3. LARGE, 30x100"

	input_size = gets.chomp

	# 04. Generate a Matrix of max(30) x max(100), based on user input

		if


else
		puts "thanks for playing"
		break
	end


	#     With values only being ' ' and '0'
	# 05. Test is cells are alive or not (' ' is dead and '0' is alive)
	# 06. Apply Rules of Conways game of life - Part 1
	#   Count living cells surrounding each element in matrix





	end
	end
	display.each{|row| puts.row.each}
	# 07. Apply Rules of Conways game of life - Part 2
	#   Create new matrix with rules applied, display it and iterate it for 10 times
	#   Rules:
	#     Any live cell with fewer than two live neighbours dies, as if caused by under-population.
	#     Any live cell with two or three live neighbours lives on to the next generation.
	#     Any live cell with more than three live neighbours dies, as if by overcrowding.
	#     Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.


	# Extra 01. Use n iterations
	# Extra 02. Fix menus and presentation
	# Extra 03. Let user decide what percentage of board to fill with 'O' at the beggining.
	# Extra 04. Move classes to files of their own
end