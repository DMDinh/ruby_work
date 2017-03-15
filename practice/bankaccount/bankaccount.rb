class BankAccount
  attr_accessor :fname, :lname, :checking, :saving, :total
  @@account_counter = 0
  def initialize(fname, lname)
    @@account_counter += 1
    @fname = fname
    @lname = lname
    @checking = 0
    @saving = 0
    @account = 0
    @total = @checking + @saving
  end


  def newAccount
    a = (0...10).map { (rand(0...9)) }.join
    @account = a
    puts "Your account number is #{@account}"
    userInfo
    self
  end

  private
  def userInfo
    puts "---------------------------------------"
    puts "Your name is: #{@fname} #{@lname}"
    puts "Your account is: #{@account}"
    puts "Your total balance: #{@total}"
    self
  end
  public
  def Balance
    puts "---------------------------------------"
    puts "Your current Checking Balance is: #{@checking}"
    puts "Your current Saving Balance is: #{@saving}"
    self
  end
  def combined
    puts "Your total combined balance is: #{@total}"
    @total = @checking + @saving
    @total

  end

  def checkingDeposit(val)
    @checking += val
    puts "You depsited #{val} into your checking account. You currently have #{@checking}"
    self
  end

  def checkingWithdraw(val)
    if val > @checking
      puts "You aint got enough funds son!"
      raise "Not enough funds in account."
    else
      @checking -= val
      puts "You withdrew #{val} from your checking account. You currently have #{@checking}"
    end
  self
  end

  def savingDeposit(val)
    puts "You aint got enough funds son!" if val > @saving
    @saving += val
    puts "You depsited #{val} into your saving account. You currently have #{@saving}"
    self
  end

  def savingWithdraw(val)
    if val > @saving
      puts "You aint got enough funds son!"
    else
      @saving -= val
      puts "You withdrew #{val} from your saving account. You currently have #{@checking}"
    end
  end
  private
  def totalaccounts
    puts "The current amount of accounts are #{@@account_counter}"
    raise "No access"

  end


end


ac1 = BankAccount.new("David", "Dinh")
ac1.checking(20000)
# ac2 = BankAccount.new("Tracy", "Vo")
# ac3 = BankAccount.new("David", "Dinh")
#
# ac2.newAccount
# ac2.userInfo
# ac2.checkingDeposit(5000000)
# ac2.savingDeposit(100000)
# ac2.Balance
