namespace :update do
  desc "TODO"
  task :tweet => :environment do
    puts 'Tweeting...'
    Twitter.configure do |config|
      config.consumer_key = 'gs7o6l1c1Ofn7OE0yFrQ'
      config.consumer_secret = 'zpwl6uA4UXC9pjNFhRUtV3UKf9iGW6zNaWw9PoW9rnA'
      config.oauth_token = '30916628-5CUdtR3fEZZiEOO87QABwiTPIVkURUTRzF4GaCgYk'
      config.oauth_token_secret = 'xIrDewraKgrv1tz68kIIyKFqnv0Z4lfoNHRnjBDU'
    end
    puts 'Done.'
    Twitter.update 'test haha'
  end
end
