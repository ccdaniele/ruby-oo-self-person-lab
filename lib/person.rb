require "pry"
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8 
        @hygiene = 8

    end

    def happiness=(happiness_index)
        if happiness_index < 0
            @happiness = 0
        elsif
            happiness_index > 10
            @happiness = 10
        else
            @happiness = happiness_index
        end
    end

    def hygiene=(hygiene_index)
        if hygiene_index < 0
            @hygiene = 0
        elsif
            hygiene_index > 10
            @hygiene = 10
        else
            @hygiene = hygiene_index
        end
    end

def happy?
    if @happiness > 7 
        @happy = true
    else
        @happy = false
    end
end

def clean?
    if @hygiene > 7
        @clean = true
    else
        @hygiene = false
    end
end

def get_paid(salary)
@bank_account += salary
return "all about the benjamins"
end

def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
    self.hygiene -= 3
    self.happiness  +=2
    "♪ another one bites the dust ♫"
end

def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(friend,topic)
    if topic == "politics"
        self.happiness -= 2
        friend.happiness -= 2
        return "blah blah partisan blah lobbyist"
    elsif topic == "weather" 
        friend.happiness += 1
        self.happiness += 1
        return "blah blah sun blah rain"
    else 
        return "blah blah blah blah blah"
    end
end
        


end

