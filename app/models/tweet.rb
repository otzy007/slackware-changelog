# Tweet the new changes
class Tweet < ActiveRecord::Base
  # tweet the slackware-current changelog
  def self.update!(tweet, version = 32)
    # Load the YAML configuration
    twitter_config = YAML.load(File.read(Rails.root.join('config', 'twitter.yml')))[Rails.env]
    # credentials 
    client = Twitter::REST::Client.new do |config|
      config.consumer_key = twitter_config["consumer_key#{version}"]
      config.consumer_secret = twitter_config["consumer_secret#{version}"]
      config.access_token = twitter_config["oauth_token#{version}"]
      config.access_token_secret = twitter_config["oauth_token_secret#{version}"]
    end
    puts "current#{version == 64 ? 64: ''}"
    puts "tweeting...."
    # Status update
    begin
      embed_code = client.oembed(client.update(tweet)).html
      Tweet.first.update_attributes({"current#{version == 64 ? 64: ''}".to_sym => embed_code}, :without_protection => true)

    rescue Twitter::Error::Forbidden
      puts "FORBIDDEN!!!"
      return false
    end
    return true
  end
end
