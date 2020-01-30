require './lib/event'
require './lib/games'

puts "What year is it?"
year = gets.chomp
game = Games.new(year)
puts "Type in the name of the event and then the ages of the players."
puts "Type quit to see a summary"
input = ''
puts "What is the name of the event? Type quit here to see the summary"
input = gets.chomp
while input != "quit" do
  ages_array = []
  puts "Type in the age of one player. Type in quit to create a different event"
  age_input = ''
  if input != 'quit'
    while age_input != 'quit' do
      puts "Age of a player: "
      age_input = gets.chomp
      if age_input != 'quit'
        ages_array << age_input.to_i
      end # age_input != 'quit'
    end # age_input != 'quit' do
  end # input != 'quit'
  event = Event.new(input, ages_array)
  game.add_event(event)
  puts "What is the name of the next event? Type quit here to see the summary"
  input = gets.chomp
end #while input != "quit" do
puts game.summary
