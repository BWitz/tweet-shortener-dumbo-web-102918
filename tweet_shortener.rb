# Write your code here.

def dictionary
  words = {
    "hello" => "hi", 
    "to" => "2", 
    "two" => "2", 
    "too" => "2", 
    "for" => "4", 
    "four" => "4", 
    "be" => "b", 
    "you" => "u", 
    "at" => "@", 
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet.split.collect do |hash|
    if dictionary.keys.include? hash.downcase
      hash = dictionary[hash.downcase]
    else
      hash
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  limited_tweet = tweet
  if limited_tweet.length > 140
    limited_tweet = word_substituter(tweet)
  end
  limited_tweet
end

def shortened_tweet_truncator(tweet)
  short_tweet = word_substituter(tweet)
  if short_tweet.length > 140
    short_tweet = short_tweet[1..140]
  else
    short_tweet
  end
end