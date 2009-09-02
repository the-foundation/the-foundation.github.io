require 'sinatra'
require 'active_record'
require 'rdiscount'
require 'digest/md5'
require 'lib/html_helpers'
require 'lib/tree'
require 'lib/pete_wiki'

set :project_name, 'Christchurch Creative Space'
set :password, '36350477ad6b248518e8e0138d8acf05'
set :salt, '3e8ef26aa740fb0885c34d7262505523'
set :google_api_key, 'ABQIAAAAhku25_kwHrCaMNoGPqrDuxRlOkyFWHl-00s1f3Cuv275XkQgsBTvqgjhzb87xFOZkxG9fbaa3Vsl_A'

enable :sessions

configure do
  environment = Sinatra::Application.environment
  db_config = YAML.load_file(File.join(File.dirname(__FILE__), 'database', 'configuration.yml'))
  ActiveRecord::Base.establish_connection(db_config[environment.to_s])
  ActiveRecord::Base.logger = Logger.new(environment == :development ? STDOUT : File.join("log", "#{environment.to_s}.database.log"))
  ActiveRecord::Base.send(:include, ActiveRecord::Acts::Tree)
  require 'models/page'
end

helpers do
  include HTMLHelpers
  
  def logged_in?
    session[:authenticated]
  end
  
  def authenticate!
    redirect '/' unless logged_in?
  end
  
  alias_method :h, :escape_html
end

before do
  @root_pages = Page.all_root
end

get '/login/?' do
  erb :login
end

post '/authentication' do
  if Digest::MD5.hexdigest(params[:password] + options.salt) == options.password
    session[:authenticated] = true
    redirect '/pages'
  else
    erb(:login)
  end
end

delete '/authentication' do
  session[:authenticated] = nil
  redirect '/'
end

get '/:page/?' do
  begin
    erb params[:page].to_sym
  rescue Errno::ENOENT
    @page = Page.find_by_permalink(params[:page])
    @page ? erb(:'pages/show') : raise(Sinatra::NotFound)
  end
end