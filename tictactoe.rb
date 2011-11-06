#!/usr/bin/env ruby

# idea => what if you used an array to show a computer move and a human move
# so when array matches winning conditions it works.

x = %q{
*** Welcome to the unbeatable tic-tac toe game!
*** Would you like to go first or second?}

puts x
player_pick = ""
player_pick = gets.chomp

  numplace = Array.new
  numplace[0] = " "
  numplace[1] = " "
  numplace[2] = " "
  numplace[3] = " "
  numplace[4] = " "
  numplace[5] = " "
  numplace[6] = " "
  numplace[7] = " "
  numplace[8] = " "
  place = [0, 1, 2, 3, 4, 5, 6, 7, 8]

while player_pick != "first" and player_pick != "second"
      puts "Try again. To select, try typing first or second"
      player_pick = gets.chomp
end

if player_pick == "first"
      puts "You have picked to play #{player_pick}"
      current_player = 0
        elsif player_pick == "second"
      puts "You have picked to play #{player_pick}"  
      current_player = 1
end

class User
  attr_accessor :move1, :move2, :move3, :move4, :move5
  def make_move(numplace)
    player_move = gets.to_i
    while numplace[player_move] != " "
  		puts "Cannot move. Space is taken!!!"
  	  player_move = gets.to_i
  	end
  	numplace[player_move] = "O"
  end
end

class AI
  attr_accessor :move1, :move2, :move3, :move4, :move5
  def make_move(numplace)
    player_move = ""
      if numplace[3] == 'O' and numplace[6] == 'O'
        player_move = 0
        elsif numplace[4] == 'O' and numplace[8] == 'O'
        player_move = 0
        elsif numplace[1] == 'O' and numplace[2] == 'O'
        player_move = 0

      #all possible for 1
        elsif numplace[0] == 'O' and numplace[2] == 'O'
        player_move = 1
        elsif numplace[4] == 'O' and numplace[7] == 'O'
        player_move = 1

      #all possible for 2
        elsif numplace[0] == 'O' and numplace[1] == 'O'
        player_move = 2
        elsif numplace[4] == 'O' and numplace[6] == 'O'
        player_move = 2
        elsif numplace[5] == 'O' and numplace[8] == 'O'
        player_move = 2

      #all possible for 3
        elsif numplace[0] == 'O' and numplace[6] == 'O'
        player_move = 3
        elsif numplace[4] == 'O' and numplace[5] == 'O'
        player_move = 3
        elsif numplace[0] == 'O' and numplace[6] == 'O'
        player_move = 3

      #all possible for 4
        elsif numplace[0] == 'O' and numplace[8] == 'O'
        player_move = 4
        elsif numplace[1] == 'O' and numplace[7] == 'O'
        player_move = 4
        elsif numplace[2] == 'O' and numplace[6] == 'O'
        player_move = 4
        elsif numplace[3] == 'O' and numplace[5] == 'O'
        player_move = 4  

      #all possible for 5
        elsif numplace[2] == 'O' and numplace[8] == 'O'
        player_move = 5
        elsif numplace[3] == 'O' and numplace[4] == 'O'
        player_move = 5

      #all possible for 6
        elsif numplace[0] == 'O' and numplace[3] == 'O'
        player_move = 6
        elsif numplace[4] == 'O' and numplace[2] == 'O'
        player_move = 6
        elsif numplace[7] == 'O' and numplace[8] == 'O'
        player_move = 6

      #all possible for 7
        elsif numplace[4] == 'O' and numplace[1] == 'O'
        player_move = 7
        elsif numplace[6] == 'O' and numplace[8] == 'O'
        player_move = 7

      #all possible for 8
        elsif numplace[6] == 'O' and numplace[7] == 'O'
        player_move = 8
        elsif numplace[0] == 'O' and numplace[4] == 'O'
        player_move = 8
        elsif numplace[2] == 'O' and numplace[5] == 'O'
        player_move = 8
      end
        player_move = 0+rand(8)
        while numplace[player_move] != " "
      	  puts "Computer flopped"
      	  player_move = 0+rand(8)
      	end
    numplace[player_move] = "X"
  end
end


def board(numplace)
    puts " #{numplace[0]} | #{numplace[1]} | #{numplace[2]} "
    puts "---|---|---"
    puts " #{numplace[3]} | #{numplace[4]} | #{numplace[5]} "
    puts "---|---|---"
    puts " #{numplace[6]} | #{numplace[7]} | #{numplace[8]} "
end


def game_over(numplace)
      if numplace[0] == 'X' and numplace[1] == 'X' and numplace[2] == 'X'
        game_over = true
        elsif numplace[0] == 'X' and numplace[3] == 'X' and numplace[6] == 'X'
        game_over = true
        elsif numplace[0] == 'X' and numplace[4] == 'X' and numplace[8] == 'X'
        game_over = true
        elsif  numplace[1] == 'X' and numplace[4] == 'X' and numplace[7] == 'X'
        game_over = true
        elsif  numplace[2] == 'X' and numplace[4] == 'X' and numplace[6] == 'X'
        game_over = true
        elsif  numplace[2] == 'X' and numplace[5] == 'X' and numplace[8] == 'X'
        game_over = true
        elsif  numplace[3] == 'X' and numplace[4] == 'X' and numplace[5] == 'X'
        game_over = true
        elsif  numplace[6] == 'X' and numplace[7] == 'X' and numplace[8] == 'X'
        game_over = true
        elsif  numplace[0] == 'O' and numplace[1] == 'O' and numplace[2] == 'O'
        game_over = true
        elsif  numplace[0] == 'O' and numplace[4] == 'O' and numplace[8] == 'O'
        game_over = true
        elsif numplace[0] == 'O' and numplace[3] == 'O' and numplace[6] == 'O'
        game_over = true
        elsif  numplace[1] == 'O' and numplace[4] == 'O' and numplace[7] == 'O'
        game_over = true
        elsif  numplace[2] == 'O' and numplace[4] == 'O' and numplace[6] == 'O'
        game_over = true
        elsif  numplace[2] == 'O' and numplace[5] == 'O' and numplace[8] == 'O'
        game_over = true
        elsif  numplace[3] == 'O' and numplace[4] == 'O' and numplace[5] == 'O'
        game_over = true
        elsif  numplace[6] == 'O' and numplace[7] == 'O' and numplace[8] == 'O'
        game_over = true
      end
end

players = []
players[0] = User.new
players[1] = AI.new

game_over = false

while !game_over(numplace)
    board(place)
    puts %q{"Below is the board you are playing on. 
Above is an example of how to move on the board.
IT IS YOUR MOVE"}
    board(numplace)
    game_over(numplace)
    players[current_player].make_move(numplace)
    if game_over(numplace)
      board(numplace)
      puts puts "You have lost. Doh. Press any key to quit..."
      ex = gets
      exit
    elsif numplace[0] != " " and numplace[1] != " " and numplace[2] != " " and numplace[3] != " " and numplace[4] != " " and numplace[5] != " " and numplace[6] != " " and numplace[7] != " " and numplace[8] != " "
      board(numplace)
      puts "cats game....MUhahahaha"
      ex = gets
      exit
    else
      current_player = (current_player + 1) % 2
    end
end