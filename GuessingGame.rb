#GuessingGameUpdated
require "tty-prompt"
require 'artii'

def play(guess_limit, maximum_guess_number)
    x = rand(maximum_guess_number + 1)
    puts "Guess your number!"
    guess = ''
    prompt = TTY::Prompt.new

    guess_limit.times do |num|
        guess = prompt.ask("guess # #{num + 1} :", convert: :int)
        while guess > maximum_guess_number || guess < 0 
            guess = prompt.ask("Please choose between 0 and #{maximum_guess_number} :", convert: :int)
        end
        if x < guess
            puts "Your guess number : #{guess} is greater than the number, try again"
        elsif x > guess
            puts "Your guess number : #{guess} is lesser the number, try again"
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
    prompt = TTY::Prompt.new
    puts "Welcome to a"
    puts Artii::Base.new.asciify("Number guessing game!")
    name = prompt.ask("What is your name?")
    puts Artii::Base.new.asciify("Welcome #{name}!")
    prompt.keypress("Press any key whenever you are ready to start.")
    select_difficulty()
end
        

def select_difficulty
    maximum_guess_number = 0
    guess_limit = -1

    prompt = TTY::Prompt.new
    difficulty = prompt.select("Select your difficulty between Very easy, easy, medium, hard or very hard!\n For explanations, select help",  %w(Very_easy easy medium hard very_hard help))
    while difficulty == "help"
        difficulty = prompt.select("Very easy mode lets you guess between 0 and 10, with unlimited guesses.
        Easy mode lets you guess between 0 and 10, with only 5 guesses.
        Medium mode lets you guess between 0 and 100, with only 6 guesses.
        Hard mode lets you guess between 0 and 500, with only 8 guesses.
        Very hard mode lets you guess between 0 and 1000, with only 9 guesses. 
        Ready to try? Choose your difficulty!", %w(Very_easy easy medium hard very_hard help))
    end

    case difficulty
        when "Very_easy"
            maximum_guess_number = 10
            guess_limit = 99999
        when "easy"
            maximum_guess_number = 10
            guess_limit = 5
        when "medium"
            maximum_guess_number = 100
            guess_limit = 6
        when "hard"
            maximum_guess_number = 500
            guess_limit = 8
        when "very_hard"
            maximum_guess_number = 1000
            guess_limit = 9
    end

    puts "Guess the number between 0-#{maximum_guess_number}"
    play(guess_limit, maximum_guess_number)
    replay()
end

def replay
    prompt = TTY::Prompt.new
    continue = prompt.yes?("Retry?")
    if continue
        select_difficulty()
    else
        puts "Thank you for trying my guessing game."
    end
end

greet()
