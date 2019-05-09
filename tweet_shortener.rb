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
    if dictionary.keys.include?(word.downcase.to_sym)
      arr[arr.index(word)] = dictionary[word.to_sym]
    end
  end
  arr.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end