require 'sinatra'
require 'active_record'
require 'rdiscount'
require 'lib/html_helpers'
require 'lib/tree'
require 'lib/pete_wiki'

set :project_name, 'Christchurch Creative Space'
set :google_api_key, 'ABQIAAAAhku25_kwHrCaMNoGPqrDuxRlOkyFWHl-00s1f3Cuv275XkQgsBTvqgjhzb87xFOZkxG9fbaa3Vsl_A'

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
  
  # TODO: implement
  def logged_in?
    true
  end
  
  def authenticate!
    redirect '/' unless logged_in?
  end
  
  alias_method :h, :escape_html
end

before do
  @root_pages = Page.all_root
end

get '/' do
  erb :index
end

get '/pages/?' do
  authenticate!
  @pages = Page.all
  erb :'pages/list'
end

get '/pages/new/?' do
  authenticate!
  @page = Page.new
  erb :'pages/form'
end

get '/pages/:permalink/edit/?' do
  authenticate!
  @page = Page.find_by_permalink(params[:permalink])
  erb :'pages/form'
end

post '/pages/?' do
  authenticate!
  @page = Page.new(params[:page])
  @page.save ? redirect("/#{@page.permalink}") : erb(:'pages/form')
end

put '/pages/:permalink/?' do
  authenticate!
  @page = Page.find_by_permalink(params[:permalink])
  @page.update_attributes(params[:page])
  @page.save ? redirect("/#{@page.permalink}") : erb(:'pages/form')
end

delete '/pages/:permalink/?' do
  authenticate!
  @page = Page.find_by_permalink(params[:permalink])
  @page.destroy
  redirect '/pages'
end

delete '/pages' do
  authenticate!
  @pages = Page.find(params[:pages])
  @pages.each { |p| p.destroy }
  redirect '/pages'
end

get '/:page/?' do
  begin
    erb params[:page].to_sym
  rescue Errno::ENOENT
    @page = Page.find_by_permalink(params[:page])
    @page ? erb(:'pages/show') : raise(Sinatra::NotFound)
  end
end