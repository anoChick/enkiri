require 'hanami/interactor'

class PostTweet
  include Hanami::Interactor

  expose :result

  def initialize(user:)
    @user = user
  end

  def call(message)
    @result = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_API_KEY']
      config.consumer_secret     = ENV['TWITTER_API_SECRET']
      config.access_token        = @user.access_token
      config.access_token_secret = @user.access_token_secret
    end.update("#{message} #localhost9292")
  end
end
