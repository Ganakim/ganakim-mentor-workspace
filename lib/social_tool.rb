module SocialTool
  def self.twitter_search
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV.fetch("YOUR_CONSUMER_KEY")
      config.consumer_secret     = ENV.fetch("YOUR_CONSUMER_SECRET")
      config.access_token        = ENV.fetch("YOUR_ACCESS_TOKEN")
      config.access_token_secret = ENV.fetch("YOUR_ACCESS_SECRET")
    end
    
    # Need to register app with twitter, and add keys to somewhere.
    
    client.search('#Rails', result_type: 'recent').take(6).collect do |x|
      "#{x.user.screen_name}: #{x.text}"
    end
  end
end