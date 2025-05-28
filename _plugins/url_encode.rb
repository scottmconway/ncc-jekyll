require 'liquid'
require 'uri'

# this is incredibly lazy but I had issues with both the built-in url_encode
# and with `URI.escape` escaping slashes
module URLEncode
  def url_encode_filename(url)
    return url.gsub(" ", "%20")
  end
end

Liquid::Template.register_filter(URLEncode)
