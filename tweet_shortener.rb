require 'pry'

def dictionary
  {
    "hello": "hi",
    "to": "2",
    "two": "2",
    "too": "2",
    "for": "4",
    "four": "4",
    "be": "b",
    "you": "u",
    "at": "@",
    "and": "&"
  }
end

def word_substituter(tweet)
  arr = tweet.split(" ")
  arr.each do |word|
    binding.pry
    if dictionary.keys.include?(word)
      arr[arr.index(word)] = dictionary[word.to_sym]
    end
  end
  arr.join(" ")
end

word_substituter("Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")