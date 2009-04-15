require 'sinatra'
require 'lib/html_helpers'

set :project_name, 'Christchurch Creative Space'
set :google_api_key, 'ABQIAAAAhku25_kwHrCaMNoGPqrDuxRlOkyFWHl-00s1f3Cuv275XkQgsBTvqgjhzb87xFOZkxG9fbaa3Vsl_A'

helpers do
  include HTMLHelpers
  alias_method :h, :escape_html
end

get '/' do
  erb :index
end

get '/:page/?' do
  begin
    erb params[:page].to_sym
  rescue Errno::ENOENT
    raise Sinatra::NotFound
  end
end