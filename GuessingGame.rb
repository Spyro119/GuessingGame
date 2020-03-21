# Guessing Game
require 'artii'

a = Artii::Base.new

def veryEasy 
    x = rand(11)
    # puts 'Very easy mode number = ' + String(x)
    num = 1
    puts "Guess # #{num}"
    puts "Guess your number!"
    guess = gets.chomp.to_i
    until x == guess do
        while guess > 10 || guess < 0 
            puts "Please choose between 0 and 10"
            guess = gets.chomp.to_i
        end
        puts "Chosen number is '#{guess}' "
        if x < guess
            puts "Your guess : #{guess} is greater than the number, try again"
        elsif x > guess
            puts "Your guess : #{guess} is lesser the number, try again"
        end
        num += 1
    puts "Guess # #{num}"
    guess = gets.chomp.to_i
    end
    puts "Congratulations! You guessed the right number :\n" + Artii::Base.new.asciify("#{x} with #{num} guesses!")
end 

def easy 
    x = rand(11)
    # puts 'Easy mode number = ' + String(x)
    guess = ''
    puts "Guess your number!"
    5.times do |num|
    puts "guess # #{num + 1}"
    guess = gets.chomp.to_i
    while guess > 10 || guess < 0 
        puts "Please choose between 0 and 10"
        guess = gets.chomp.to_i
    end
        puts "Chosen number is '#{guess}' "
        if x < guess
            puts "Your guess : #{guess} is greater than the number, try again"
        elsif x > guess
            puts "Your guess : #{guess} is lesser the number, try again"
        elsif x == guess
            puts "Congratulations! You guessed the right number :\n" + Artii::Base.new.asciify("#{x} with #{num + 1} guesses!")
            break
        end
    end
    if guess != x 
        puts "Game over. The number was"
        puts Artii::Base.new.asciify("#{x}")
        
    end
end 

def medium
    x = rand(101)
    # puts 'Medium mode number = ' + String(x)
    guess = ''
    puts "Guess your number!"
    6.times do |num|
        puts "guess # #{num + 1}"
        guess = gets.chomp.to_i
        while guess > 100 || guess < 0 
            puts "Please choose between 0 and 100"
            guess = gets.chomp.to_i
        end
        puts "Chosen number is '#{guess}' "
        if x < guess
            puts "Your guess : #{guess} is greater than the number, try again"
        elsif x > guess
            puts "Your guess : #{guess} is lesser the number, try again"
        elsif x == guess
            puts "Congratulations! You guessed the right number :\n" + Artii::Base.new.asciify("#{x} with #{num + 1} guesses!")
            break
        end
    end
    if guess != x 
        puts "Game over. The number was"
        puts Artii::Base.new.asciify("#{x}")
    end
end 

def hard
    x = rand(501)
    guess = ''
    puts "Guess your number!"
    # puts 'Hard mode number = ' + String(x)
    8.times do |num|
        puts "guess # #{num + 1}"
        guess = gets.chomp.to_i
        while guess > 500 || guess < 0 
            puts "Please choose between 0 and 500"
            guess = gets.chomp.to_i
        end
        puts "Chosen number is '#{guess}' "
        if x < guess
            puts "Your guess : #{guess} is greater than the number, try again"
        elsif x > guess
            puts "Your guess : #{guess} is lesser the number, try again"
        elsif x == guess
            puts "Congratulations! You guessed the right number :\n" + Artii::Base.new.asciify("#{x} with #{num + 1} guesses!")
            break
        end
    end
    if guess != x 
        puts "Game over. The number was"
        puts Artii::Base.new.asciify("#{x}")
    end
end 

def veryHard
    x = rand(1001)
    # puts 'Very hard mode number = ' + String(x)
    puts "Guess your number!"
    guess = ''
    9.times do |num|
        puts "guess # #{num + 1}"
        guess = gets.to_i
        while guess > 1000 || guess < 0 
            puts "Please choose between 0 and 1000"
            guess = gets.chomp.to_i
        end
        puts "Chosen number is '#{guess}' "
        if x < guess
            puts "Your guess : #{guess} is greater than the number, try again"
        elsif x > guess
            puts "Your guess : #{guess} is lesser the number, try again"
        elsif x == guess
            puts "Congratulations! You guessed the right number :\n" + Artii::Base.new.asciify("#{x} with #{num + 1} guesses!")
            break
        end
    end
    if guess != x 
        puts "Game over. The number was"
        puts Artii::Base.new.asciify("#{x}")
    end
end 

def greet
    puts "Welcome to a"
    puts Artii::Base.new.asciify("Number guessing game!")
    puts "What is your name?"
    name = gets.chomp
    puts Artii::Base.new.asciify("Welcome #{name}!")
    puts "Type y whenever you are ready to start"
    ready = gets.chomp
    while ready != "y" && ready != "yes"
        puts "Please type y or yes when you are ready"
        ready = gets.chomp
        end
    if ready == "y" || ready == "yes"
        game()
    end
end
        

def game
    puts "Select your difficulty between Very easy, easy, medium, hard or very hard!\n For explanations, type ?"
    difficulty = gets.chomp
    while difficulty != "very easy" && difficulty != "easy" && difficulty !=  "medium" && difficulty !=  "hard" && difficulty !=  "very hard" && difficulty !=  "?"
        puts "Please select a valid difficulty. Type very easy, easy, medium, hard or very hard to select your difficulty or '?' for info"
        difficulty = gets.chomp
    end
    if difficulty == "?" 
        puts "Very easy mode lets you guess between 0 and 10, with unlimited guesses.
        Easy mode lets you guess between 0 and 10, with only 5 guesses.
        Medium mode lets you guess between 0 and 100, with only 6 guesses.
        Hard mode lets you guess between 0 and 500, with only 8 guesses.
        Very hard mode lets you guess between 0 and 1000, with only 9 guesses. 
        Ready to try? Choose your difficulty!"
        difficulty = gets.chomp
        while difficulty != "very easy" && difficulty != "easy" && difficulty !=  "medium" && difficulty !=  "hard" && difficulty !=  "very hard"
            puts "Please select a valid difficulty. Type very easy, easy, medium, hard or very hard to select your difficulty"
            difficulty = gets.chomp
        end
    end
        if difficulty == "very easy"
            puts "Guess the number between 0-10"
            veryEasy()
        elsif difficulty == "easy"
            puts "Guess the number between 0-10"
            easy()
        elsif difficulty == "medium"
            puts "Guess the number between 0-100"
            medium()
        elsif difficulty == "hard"
            puts "Guess the number between 0-500"
            hard()
        elsif difficulty == "very hard"
            puts "Guess the number between 0-1000"
            veryHard()
        else 
            puts "Please select your game's difficulty. Type ? for help."
    end
    keepPlay()
end

def keepPlay
    puts "Want to retry? y/n"
    continue = gets.chomp
    while continue != "y" && continue != "yes" && continue != "n" && continue != "no"
        puts "Please type y or n."
        continue = gets.chomp
    end

    if continue == "y" || continue == "yes"
        game()
    elsif continue == "n" || continue == "no"
        puts "Thank you for trying my guessing game."
    end
end


greet()
