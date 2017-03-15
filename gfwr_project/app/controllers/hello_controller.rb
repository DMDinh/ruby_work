class HelloController < ApplicationController
  def hello
    render text: "Hello Coing Dojo!"
  end

  def ihateyou
    render text: "Saying i hate you!!"
  end

  def ihateyoujoe
    render text: "Saying i hate you Joe!"
  end

  def michael
    redirect_to '/say/hello/joe'
  end

  def index
    render text: "What do you want me to say?"
  end

  def times
    count = session[:id]
    if session[:id] == nil
      count == false
      render text: "No one is here"
    elsif
      render text: "You have visited this url #{count} time."
      session[:id] += 1
    end
  end

  def reset
    session[:id] = 1
    render text: "Destroyed the session!"
  end

end
