class ApplicationController < ActionController::Base

  def home
    if params[:year].nil?
      date = (Date.today - 1.year)
    else
      date = Date.parse("#{params[:year]}-#{params[:month]}-#{params[:day]}")
    end

    if params[:subreddit]
      subreddit = "&subreddit=#{params[:subreddit]}"
    else
      subreddit = ""
    end

    @url = "https://api.pushshift.io/reddit/submission/search?after=#{date.strftime}&before=#{(date+1.day).strftime}&sort=desc&sort_type=score#{subreddit}"
    begin
      @output = JSON.parse(HTTParty.get(@url).body)
    rescue
      @output = nil
    end
  end
end
