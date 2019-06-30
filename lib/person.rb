require "pry"
class Person

    

    def initialize(name, balance = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = balance
        @happiness = happiness
        @hygiene = hygiene

    end

    

    def name
        @name
    end

    def bank_account
        @bank_account
        
    end
    
    
    def happiness=(happiness)
        @happiness = 10 if happiness > 10
        @happiness = 0 if  happiness < 0
        if (happiness > 0 && happiness < 10)
            @happiness = happiness 
        end

    end


    def hygiene=(hygiene)
        if hygiene > 10 
            self.hygiene = 10 
        elsif hygiene < 0
            self.hygiene = 0 
        else (hygiene > 0 && hygiene < 10)
            @hygiene = hygiene
        end

    end

    def happy?
        @happiness > 7
    end 

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account = @bank_account + salary

        return "all about the benjamins"
    end

    def take_bath
        self.hygiene = hygiene + 4
        
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end 


    def work_out
        self.hygiene = hygiene - 3

        self.happiness = @happiness + 2

        return "♪ another one bites the dust ♫"
    end
    
    def call_friend(person)
        self.happiness = happiness + 3

        # binding.pry

        person.happiness = person.happiness + 3
        
        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        objects = [self, person]
        if topic == "politics"
            objects.each do |o|
                o.happiness -= 2
            end
            # self.happiness = @happiness  - 2

            # person.happiness = person.happiness - 2

            return "blah blah partisan blah lobbyist"

        elsif topic == "weather"
            objects.each do |o|
                o.happiness += 1
            end 

            # self.happiness = @happiness  + 1

            # person.happiness = person.happiness + 1

            return "blah blah sun blah rain"
            
        else topic == "other"
            return "blah blah blah blah blah"

        end

    end


    attr_reader :name, :happiness, :hygiene

    attr_accessor :bank_account


end