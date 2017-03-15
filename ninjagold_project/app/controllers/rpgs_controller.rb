class RpgsController < ApplicationController
  def index
    if !session
      session[:total_gold] = 0
      session[:activities] = []
    else
      session[:total_gold] = session[:total_gold]
    end
  end

  def farm
    gold = rand(10..20)
    session[:total_gold] += gold
    session[:activities].push("You earned #{gold} gold from the farm!")
    redirect_to '/'
  end

  def cave
    gold = rand(5..10)
    session[:total_gold] += gold
    session[:activities].push("You earned #{gold} gold from the cave!")
    redirect_to '/'
  end

  def house
    gold = rand(2..5)
    session[:total_gold] += gold
    session[:activities].push("You earned #{gold} gold from the house!")
    redirect_to '/'
  end

  def casino
    gold = rand(-50..50)
    session[:total_gold] += gold
    session[:activities].push("You earned #{gold} gold from the casino!")
    redirect_to '/'
  end

  def activities

  end
end
