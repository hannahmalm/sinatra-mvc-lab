class PigLatinizer
#1. get the user input in a form 
#2. Take the info from form and Find the first letter of each word 
#3. Determine if the first letter of each word is a vowel or a constanat 
#4. If letter = A,E,I,O,U, then /[aeiouAEIOU]/
#5. If constanat (Not AEIOU), then... /[^aeiouAEIOU]/
#the models is where the logic is held
require 'pry'

#Vowels
#put the ^ carrot before the regex to signify looking at the first letter
#/i indicates that letter can be upper or lowercase
#print out the input with way at the end
class PigLatinizer
def input_word(input)
  if /^[aeiou]/i.match(input)
    "#{input}way"
    #you could also write word + "way"
  else 
  #split input into two parts depending on where the first vowel is 
  #wildcard spits a word on whatever the regex is 
  #get the second part, the the first part, then add ay at the end 
    parts = input.split(/([aeiou].*)/)
    "#{parts[1]}#{parts[0]}ay"
  end 
end 

#create a method that looks at input sentences and splits each word by space, then does the logic from above, then rejoins the words
#.map returns a new array with the transformed elements 
def piglatinize(input)
  sentence = input.split(' ') 
  sentence.map {|sentence| input_word(sentence)}.join(' ')
end
end 
end 