module ApplicationHelper
  def format_url(url)
    url.start_with?("http://", "https://") ? url : "https://#{url}"
  end
end
