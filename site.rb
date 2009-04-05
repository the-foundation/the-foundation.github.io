require 'sinatra'

set :project_name, 'Christchurch Creative Space'

helpers do
  def project_name
    options.project_name
  end
  
  def page_title
    (@heading + ' &mdash; ' if @heading).to_s + project_name
  end
  
  def heading(text)
    content_tag(:h1, @heading = text)
  end
  
  def link(text, path = '#', options = {})
    content_tag(:a, text, options.merge!(:href => path))
  end
  
  def image(path, alt, options = {})
    path = "/images/#{path}" unless path =~ /^http(s)?:\/\/|^\//i
    content_tag(:img, nil, options.merge!(:src => "#{path}", :alt => alt))
  end
  
  def content_tag(tag, content = nil, options = {})
    tag = tag.to_s
    html = "<#{tag}"
    options.each do |attribute, value|
      html << " #{attribute}=\"#{value}\""
    end
    html << (content ? ">#{content}</#{tag}>" : " />")
  end
  
  def link_unless_current(text, path = nil, options = {})
    path == remove_trailing_information(request.path_info) ? text : link(text, path, options)
  end
  
  def remove_trailing_information(string)
    string.gsub(/.(\/|\..*?)+$/, '')
  end
  
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