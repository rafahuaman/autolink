module TwitterClient
  def twitter_client
    @twitter_client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = "hT5JBcuTARACFmCq5tAd4g"
      config.consumer_secret     = "0Flfjgees98u6pNzfJLpHzpby7giJCtISYF0nQ4LRQ"
      config.access_token        = "25876491-YlvRKCe72xGusEmBVtedrhhGO97gQgjBAeSEzvtz4"
      config.access_token_secret = "HpStEf1eNsHTzoftnQ1bN6eAFCFtuSTWGs15IYOCncGZO"
    end
  end
end
