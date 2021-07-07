# your code goes here
class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def happiness=(h)
    if h <= 10 && h >= 0
      @happiness = h
    end
    if h > 10
      @happiness = 10
    end
    if h < 0
      @happiness = 0
    end
  end

  def hygiene=(h)
    if h > 10
      return @hygiene = 10
    end
    if h < 0
      return @hygiene = 0
    end
    return @hygiene = h

  end

  def initialize (name, bank_account = 25,  hygiene = 8)
    @name = name
    @bank_account = bank_account
    #if (happiness <= 10) && (happiness >=0)
      @happiness = 8
    #end
    @hygiene = hygiene
  end
  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
   end

   def get_paid (salary)
     @bank_account += salary
     return "all about the benjamins"
    end

    def take_bath
      self.hygiene = self.hygiene + 4
      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
      self.hygiene = self.hygiene - 3
      self.happiness = self.happiness + 2
      return "♪ another one bites the dust ♫"
    end

    def call_friend (friend)
      self.happiness = self.happiness + 3
      friend.happiness = friend.happiness + 3
      return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (friend, topic)
      case topic
      when "politics"
        friend.happiness = friend.happiness - 2
        self.happiness = self.happiness - 2
        return "blah blah partisan blah lobbyist"
        exit
      when "weather"
        friend.happiness = friend.happiness + 1
        self.happiness = self.happiness + 1
        return "blah blah sun blah rain"
        exit
      else
        return "blah blah blah blah blah"
      end
    end

end
