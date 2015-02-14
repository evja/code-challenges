#tic tac toe



row1 = ["1", "2", "3"]
row2 = ["4", "5", "6"]
row3 = ["7", "8", "9"]

col1 = [row1[0], row2[0], row3[0]]
col2 = [row1[1], row2[1], row3[1]]
col3 = [row1[2], row2[2], row3[2]]

diag_1to9 = [row1[0], row2[1], row3[2]]
diag_3to7 = [row1[2], row2[1], row3[0]]

total_positions = [row1,row2,row3]

puts "here's the game, you type the number of the place you want your character"

until row1.each == "X" or "O"  || row2.each == "X" or "O"  || row3.each  == "X" or "O"

	display = total_positions.each {|row| puts row.join(",")}


	#define who's x and o
	puts "Choose which one you want X or O"
	input = gets.chomp
	player_human = input.upcase
	player_computer = nil

	if player_human != "X" or "O"
		puts "please select an X or an O to play"
		return
	end


	if player_human == "X"
		player_computer = "O"
		puts "Computer is \"O\" and You are \"X\""
	else
		player_computer = "X" && player_human = "O"
		puts "Computer is \"X\" and You are \"O\""
	end


# 	#get user input
# 	loop do
# 		puts "Choose where you would like to put an " + player_human
# 		user_input = gets.chomp
# 		num = user_input.to_i

# 		#computer input

# 		computer_input = total_positions.sample

# 		puts computer_input


# 		#if thens to compare user input to arrays
# 		 if user_input == "1"
# 		  	col1[0] << "X"
# 		 elsif user_input == "2"
# 		 	col1[1]

# 		 elsif
# 		 	nil

# 		 end
# 		end
# end
