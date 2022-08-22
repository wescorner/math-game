class Game
  def initialize(player)
    @current_player = player
  end

  def question
    num1 = rand(1..20)
    num2 = rand(1..20)
    @ans = num1 + num2

    puts "Player #{@current_player.id}: What does #{num1} plus #{num2} equal?"
  end

  def play

    question
    response = gets.chomp.to_i

    if response == @ans
      puts "Player #{@current_player.id}: YES! You are correct!"
    else
      puts "Player #{@current_player.id}: Seriously? No!"
      @current_player.lives = @current_player.lives - 1
    end 
  end
end