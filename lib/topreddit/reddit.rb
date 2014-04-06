require 'pry'
require 'json'
require 'rest-client'

class Reddit
  attr_reader :endpoint_url, :parsed_response

  def initialize
    @endpoint_url = 'http://www.reddit.com/r/cats/top/.json?sort=top&t=day'
    self.get
  end

  def get
   response = RestClient.get(endpoint_url)
    self.parse(response)
  end

  def parse(data)
    @parsed_response = JSON.parse(data)
  end

  def top
    parsed_response['data']['children'].first['data']
  end

  def bottom
    parsed_response['data']['children'].last['data']
  end

  def displaytop
    %{
    "Today's top cat post is:"
    "Title: #{top['title']}"
    "Author: #{top['author']}"
    "Link: #{top['url']}"
    }
  end

  def displaybottom
    %{
    'Today's worse cat post is:'
    "Title: #{bottom['title']}"
    "Author: #{bottom['author']}"
    "Link: #{bottom['url']}"
    }
  end
  binding.pry
end