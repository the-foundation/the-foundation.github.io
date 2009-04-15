module HTMLHelpers
  
  def project_name
    options.project_name || 'Unnamed'
  end
  
  # Shows the page title, throw this in your <title> tags
  def page_title
    (@heading + ' &mdash; ' if @heading).to_s + project_name
  end
  
  # Set the page heading and display it as a heading
  # If you use <% %> instead of  <%= %>, you can set the heading without displaying the <h1>
  def heading(text)
    content_tag(:h1, @heading = text)
  end
  
  # Quick, simple links
  def link(text, path = '#', options = {})
    content_tag(:a, text, options.merge!(:href => path))
  end
  
  # Assumes '/images' as your image path
  def image(path, alt, options = {})
    content_tag(:img, nil, options.merge!(:src => "/images/#{path}", :alt => alt))
  end
  
  # Quick and easy tag creation
  def content_tag(tag, content = nil, options = {})
    tag = tag.to_s
    html = "<#{tag}"
    options.each do |attribute, value|
      html << " #{attribute}=\"#{value}\""
    end
    html << (content ? ">#{content}</#{tag}>" : " />")
  end
  
  # Displays a link or just plain text depending on whether the path matches the current route
  def link_unless_current(text, path = nil, options = {})
    path == remove_trailing_information(request.path_info) ? content_tag(:span, text, :class => 'current') : link(text, path, options)
  end
  
  # Removes trailing slashes and file extensions
  # (eg. "/flisket", "/flisket/", "/flisket.html" all match "/flisket") 
  def remove_trailing_information(string)
    string.gsub(/.(\/|\..*?)+$/, '')
  end
  
  # Displays a list of errors for a given model
  def errors_for(model)
    return if model.errors.empty?
    content_tag(:ul, model.errors.map { |e| content_tag(:li, e.first) }.uniq, :class => 'errors')
  end
  
  def google_map
    @gmap = true
    content_tag(:div, "Please make sure you have JavaScript enabled to view this map.", :id => 'map')
  end
  
  def scripts
    output = ""
    if @gmap
      output = <<-HTML
        <script type="text/javascript" src="http://www.google.com/jsapi?key=#{options.google_api_key}"></script>
        <script type="text/javascript">
          google.load("maps", "2.x");
           
          function initialize() {
            var map = new google.maps.Map2(document.getElementById("map"));
            map.setCenter(new google.maps.LatLng(37.4419, -122.1419), 13);
          }
          
          google.setOnLoadCallback(initialize);
        </script>
      HTML
    end
    output
  end
  
end