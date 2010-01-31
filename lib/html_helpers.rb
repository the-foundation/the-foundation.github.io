module HTMLHelpers
  
  def project_name
    options.project_name || 'Unnamed'
  end
  
  # Shows the page title, throw this in your <title> tags
  def page_title
    return "#{@heading} &mdash; #{project_name}" if @heading
    project_name + (" &mdash; #{options.tagline}" if options.tagline).to_s
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
  
  # Displays a the base errors for a given model
  def base_errors_for(model, options = {})
    return unless model.errors.on_base
    content_tag(:ul, model.errors.on_base.map { |e| content_tag(:li, h(e)) }.uniq, options.merge!(:class => 'errors'))
  end
  
  # Displays the first error for a given attribute on a model
  def error_message_for(model, attribute, options = {})
    return unless model.errors.invalid?(attribute)
    message = model.errors.on(attribute)
    content_tag(:span, h(message.is_a?(Array) ? message.first : message), options.merge!(:class => 'error'))
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
            map.setCenter(new google.maps.LatLng(-43.52857561845461, 172.6408338546753), 16);
            map.addOverlay(new GMarker(map.getCenter()));
            map.openInfoWindowHtml(map.getCenter(), "<strong>Canterbury Innovation Incubator</strong><br />200 Armagh St<br />Christchurch");
          }
          
          google.setOnLoadCallback(initialize);
        </script>
      HTML
    end
    output
  end
  
  def alternate_row(row_number)
    ' class="alternate"' if row_number % 2 > 0
  end
  
  def options_for(collection, content, value, selected_value, options = {})
    options_html = collection.map do |item|
      next if options[:exclude] == item
      tag_options = { :value => (value.is_a?(Symbol) ? item.send(value) : value)}
      tag_options.merge(:selected => 'selected') if value == selected_value
      content_tag(:option, (content.is_a?(Symbol) ? item.send(content) : content.to_s), tag_options)
    end
    options_html.unshift content_tag(:option, '') if options.include?(:empty)
    options_html
  end
  
end
