require 'pry'

def dictionary(word)
    dict = {"hello" => "hi", 
        "to" => "2", 
        "two" =>"2", 
        "too" => "2", 
        "for" => "4", 
        "For" => "4",
        "four" => "4", 
        'be' => 'b', 
        'you' => 'u', 
        "at" => "@", 
        "and" => "&"}
    dict_keys = dict.keys
    if dict_keys.include?(word)
        dict[word]
    else
        word
    end
end

def word_substituter(tweet)
    tweet_array = tweet.split(" ")
    master = []
    tweet_array.each do |word|
        master << dictionary(word)
    end
    master = master.join(" ")
end

def bulk_tweet_shortener(tweet_array)
    tweet_array.each do |tweet|
        puts word_substituter(tweet)
    end
end

def selective_tweet_shortener(tweet)
    num = tweet.length
    if num > 140
        return word_substituter(tweet)
    else
        return tweet
    end
end


def shortened_tweet_truncator(tweet)
    num = tweet.length
    if num > 140
        tweet_length = word_substituter(tweet).length
        if tweet_length > 140
            return (tweet[1..137] + "...")
        end
    else
        return tweet
    end
end