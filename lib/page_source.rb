require 'net/http'
module PageSource
  def get_page_source url
    return "url should not be empty" if url.nil? || url.strip.empty?
    uri = URI(url)
    Net::HTTP.get(uri) rescue "Url Formate is not currect"
  end
end
