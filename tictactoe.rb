class Tictactoe
	def initialize
		@board = Array.new(9, ' ')
		@wins = [[0, 1, 2], [0, 3, 6], [6, 7, 8], [2, 5, 8], [0, 4, 8], [3, 4, 5], [1, 4, 7], [2, 4, 6]]
		puts "\nWelcome to a game of Tic Tac Toe!\n"
		@turn = 0
	end
	def play
		printBoard
		x = Array.new
		o = Array.new
		while @board.include?(' ') == true
			puts "It is #{turn}'s turn\n"
			puts "\nWhich square would you like to fill? (0 - 8)"
			choice = gets.chomp
			while play.include?(choice.to_i) == true
				puts "\nYou've already chosen that number. Please choose a different number:"
				choice = gets.chomp
			end
			if @turn%2 == 0			# append all user input to array called 'play'
				x << choice.to_i
			else
				o << choice.to_i
			end
			@board[choice.to_i] = turn		# make the input position of board to either 'X' or 'O'
			printBoard
			@wins.each do |a|
				if a.all?{|i| play}			# The question now is: how the hell do I make the comptuer know whether
											# player 1 won or player 2????
			@turn += 1
		end
	end
	def printBoard
		puts "\n"
		puts " #{@board[0]} | #{@board[1]} | #{@board[2]}"
		puts "-----------"
		puts " #{@board[3]} | #{@board[4]} | #{@board[5]}"
		puts "-----------"
		puts " #{@board[6]} | #{@board[7]} | #{@board[8]}"
		puts "\n"
	end
	def turn
		(@turn%2 == 0) ? 'X' : 'O'
	end
end

j = Tictactoe.new
j.play

