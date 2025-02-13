class ZebraController < ApplicationController
  def rock
    @random_move = ["rock", "paper", "scissors"].sample

    if @random_move == "paper"
       @outcome = "lost"
    end
    
    if @random_move == "scissors"
       @outcome = "won"
    end

    if @random_move == "rock"
       @outcome = "tied"
    end

    render({ :template => "game_templates/play_rock"})
  end

  def paper
    @random_move = ["rock", "paper", "scissors"].sample

    if @random_move == "paper"
       @outcome = "tied"
   end
   
   if @random_move == "scissors"
      @outcome = "lost"
   end

   if @random_move == "rock"
      @outcome = "won"
   end

    render({ :template => "game_templates/play_paper"})
  end

  def scissors
    @random_move = ["rock", "paper", "scissors"].sample

    if @random_move == "paper"
       @outcome = "won"
   end
   
   if @random_move == "scissors"
      @outcome = "tied"
   end

   if @random_move == "rock"
      @outcome = "lost"
   end

    render({ :template => "game_templates/play_scissors"})
  end

  def rules
    render({ :template => "game_templates/rules"})
  end
end
