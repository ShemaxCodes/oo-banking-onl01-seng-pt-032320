class BankAccount
attr_accessor :balance, :status 
attr_reader :name 

def initialize(name, balance = 1000)
  @name = name 
  @balance = balance 
  @status = "open"
  
end 

def deposit(money)
  self.balance += money 
  
end 

def display_balance
  return "Your balance is $#{self.balance}."
  
end 

def valid?
  @status == "open" && @balance > 0
end 

def close_account
  @status = "closed"
end 

end
