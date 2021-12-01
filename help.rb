# frozen_string_literal: true

# hashes = [ { 'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine' },
#              { 'dog' => 'rover', 'cat' => 'kitty', 'donkey' => 'ass' } ]

# CSV.open("data1.csv", "w", headers: hashes.first.keys) do |csv|
#     hashes.each do |h|
#       csv << h.values
#     end
# end
require 'byebug'
require 'csv'
# sign up page code start here
$h1 = {}

def signup
  puts 'open your signup page'
  puts '................'
  (1..5).each do |_i|
    puts 'enter name'
    $h1.store(:name, gets.chomp)
    puts 'enter dob'
    $h1.store(:dob, gets.chomp)
    puts 'enter address'
    $h1.store(:address, gets.chomp)
    puts 'enter email'
    $h1.store(:email, gets.chomp)
    puts 'enter password'
    $h1.store(:password, gets.chomp)
    puts $h1
    CSV.open("data1.csv", "a+") do |csv|
       csv << $h1 
    end
    puts 'you exit then enter 1'
    exit_input = gets.chomp.to_i
    case exit_input
    when 1
      break
    end
  end
end
def login
  puts '..............'
  puts 'welcome to login page'
  puts '..............'
  puts 'please enter user name and password'
  puts '..............'
  i1 = gets.chomp
  i2 = gets.chomp
  if $h1.value?(i1) && $h1.value?(i2)
    puts 'successful login page'
  else
    puts "please enter correct input if you don't have account so please create
    new account"
  end
  puts $h1.to_s
end

def menu
  puts 'welcome to user'
  puts '.................'
  puts 'If you want to open sign up page enter 1 '
  puts '.................'
  puts 'If you want to open login up page enter 2 '
  puts '.................'
  puts 'If you want to exit then enter 3'
  puts '.................'
  puts 'please choose any option'
  puts '.................'
end
loop do
  menu
  input1 = gets.chomp.to_i
  case input1
  when 1
    signup
  when 2
    login
  when 3
    exit
  else
    puts 'invalid input'
  end
end
