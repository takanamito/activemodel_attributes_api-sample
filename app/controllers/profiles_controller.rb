class ProfilesController < ApplicationController
  def index
    user = User.first
    tweet = Tweet.first
    profile = Profile.new(user_name: user.name, tweet: tweet.tweet_text)
    render json: profile
  end
end
