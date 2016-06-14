module ApplicationHelper
  def root_amp
    url = root_url

    return url #if Rails.env.development?

    return url.gsub(/http[s]{0,1}:\/\//, { 'http://' => "https://cdn.ampproject.org/c/", 'https://' => "https://cdn.ampproject.org/c/s/" })
  end
end
