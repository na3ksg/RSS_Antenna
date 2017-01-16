require "sinatra"
require "sinatra/reloader"
require "rss"

get '/' do
    @rss = RSS::Parser.parse("http://feeds.feedburner.com/hatena/b/hotentry")
    erb :index
end