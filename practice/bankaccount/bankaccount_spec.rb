require_relative 'bankaccount'
RSpec.describe BankAccount do

  before do
    @bank = BankAccount.new("Ayyy", "Lmao")
  end

  it "Has a method for retrieving bank account balance" do

    @bank.Balance
    expect(@bank.checking).to eq(0)
    expect(@bank.saving).to eq(0)
    # expect(@bank.total).to eq (0)

  end

  it "Has a method for total account balance." do
    # @bank.savingDeposit(10000)
    # @bank.total
    expect(@bank.combined).to eq(0)

  end

  it "Has a method for user to withdraw cash" do

    @bank.checkingDeposit(1000)
    @bank.checkingWithdraw(1000)

    expect(@bank.checking).to eq(0)

  end

  it "has a method to throw an error if user withdrawas more money than they have" do
    expect{@bank.checkingWithdraw(100000)}.to raise_error("Not enough funds in account.")
  end

  it "Has an error when user tries to print out how many banks there are." do

    expect{@bank.totalaccounts}.to raise_error(NoMethodError)
  end

  it "Raises an error if user tries to set attributes." do

    expect{@bank.checking(100)}.to raise_error(ArgumentError)
    expect{@bank.saving(100)}.to raise_error(ArgumentError)
    expect{@bank.account(100)}.to raise_error(NoMethodError)
    expect{@bank.interest_rate(0.03)}.to raise_error(NoMethodError)
    expect{@bank.totalaccounts(100)}.to raise_error(NoMethodError)


  end




end
