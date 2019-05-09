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
    if dictionary.keys.include?(word)
      arr[arr.index(word)].replace(dictionary[word])
    end
  end
  arr.join(" ")
end