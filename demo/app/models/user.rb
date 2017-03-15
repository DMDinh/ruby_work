class User < ApplicationRecord
  has_many :cars
  validates :first_name, :last_name, :email, presence: true

  

  def self.saySomething
    return "Hello World from saySomething that you created not rails!"
  end

  def self.showFirstNames
    arr = []
    users = self.all

    users.each {|user| arr.push(user[:first_name])}

    arr

  end




end
