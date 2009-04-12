require 'sinatra'
require 'lib/html_helpers'

set :project_name, 'Christchurch Creative Space'

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