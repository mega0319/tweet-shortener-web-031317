# Write your code here.
require 'pry'

def dictionary

  return {

  "hello" => "hi",
  "Hello" => "hi",
  "to" => "2",
  "To" => "2",
  "two" => "2",
  "Two" => "2",
  "too" => "2",
  "Too" => "2",
  "for" => "4",
  "For" => "4",
  "four" => "4",
  "Four" => "4",
  "be" => "b",
  "Be" => "b",
  "you" => "u",
  "You" => "u",
  "at" => "@",
  "At" => "@",
  "and" => "&",
  "And" => "&"
}
end


def word_substituter(tweet)
  array = tweet.split.collect do |word|
    if dictionary.keys.include?(word)
      dictionary[word]
    else
      word
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.collect do |messages|
    puts word_substituter(messages)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..136] += "..."
  else
    word_substituter(tweet)
  end
end
