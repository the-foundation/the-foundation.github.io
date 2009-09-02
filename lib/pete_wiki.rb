module Sinatra
  module PeteWiki
    def self.registered(app)
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
    end
  end
  
  register PeteWiki
end