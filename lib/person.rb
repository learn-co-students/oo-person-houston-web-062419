class Person
  attr_reader :happiness, :hygiene
  attr_accessor :bank_account
    def initialize(name, balance=25, happiness = 8, hygiene = 8)
      @name = name
      @bank_account = balance
      @happiness = happiness
      @hygiene = hygiene
      
    end
   
    def name
      @name
    end

    def bank_account=(balance)
      @bank_account = balance
    end

    def happiness=(happiness)
      if happiness > 10
        @happiness = 10
      elsif happiness < 0
        @happiness = 0
      else @happiness = happiness
      end
    end

    def hygiene=(hygiene)
      if hygiene > 10
        @hygiene = 10
      elsif hygiene < 0
        @hygiene = 0
      else @hygiene = hygiene
      end
    end

    def clean?
      # happiness > 7
      hygiene > 7
    end

    def happy?
      happiness > 7
      # hygiene > 7
    end

    def get_paid(salary)
      @bank_account = @bank_account + salary
      return "all about the benjamins"
    end

    def take_bath
      self.hygiene = self.hygiene + 4
      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
      self.happiness = self.happiness + 2
      self.hygiene = self.hygiene - 3
      return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
      self.happiness = self.happiness + 3
      friend.happiness = friend.happiness + 3
      return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
      if topic == "politics"
        self.happiness = self.happiness - 2
        friend.happiness = friend.happiness - 2
        return "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        self.happiness = self.happiness + 1
        friend.happiness = friend.happiness + 1
        return "blah blah sun blah rain"
      elsif topic != "politics" || topic != "weather"
        return "blah blah blah blah blah"
      end

    end


  end


 