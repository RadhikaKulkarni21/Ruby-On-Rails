#You will see a lot of Guma here and there, bc today 17/11/2025 Guma left T1 
#after 7 years and I am not taking in the news properly

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  public    # This method can be called from outside the class.
  
  def about_me
    puts "I'm #{@name} and I'm #{@age} years old!"
  end
  
  private   # This method can't!
  
  def bank_account_number
    @account_number = 12345
    puts "My bank account number is #{@account_number}."
  end
end

eric = Person.new("Gumayusi", 24)
eric.about_me
eric.bank_account_number


class Dog
    def initialize(name, breed)
        @name = name
        @breed = breed
    end
    public
    def bark
        puts "Woof!"
    end
    private
    def id
        @id_number = 12345
    end
end

#Accessors
class Person
  attr_reader :name
  attr_writer :id
  attr_accessor :job#when you want both read and write
  
  def initialize(name, job, id)
    @name = name
    @job = job
    @id = id
  end
end