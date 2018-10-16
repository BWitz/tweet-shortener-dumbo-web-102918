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
  shortened_tweet = tweet
  if shortened_tweet.length > 140
    shortened_tweet = word_substituter(tweet)
  end
  shortened_tweet
end

