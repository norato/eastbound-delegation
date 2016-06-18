module DelegatesHelper

  def pretty_name(delegate = nil)
    d = @delegate || delegate
    "#{d.name_first} #{d.name_last}".gsub(/\(.*\)/,'').gsub(/  /, ' ')
  end

  def share_me(delegate = nil)
    d = @delegate || delegate
    "Pls RT & share! Band together, help send Bernie's delegate to Philly:\n#{truncate(pretty_name(d), length: 18, omission: '…')}"
  end

  def share_state(state)
    "Pls RT & share! Let's band together & get Bernie delegates to Philly! www.adoptaberniedelegate.com"
  end

  def state_url(state)
    url = state_delegates_url(state: state)

    return url #if Rails.env.development?

    return url.gsub(/http[s]{0,1}:\/\//, { 'http://' => "https://cdn.ampproject.org/c/", 'https://' => "https://cdn.ampproject.org/c/s/" })
  end

  def delegate_amp(delegate)
    url = delegate_url(delegate)

    return url #if Rails.env.development?

    return url.gsub(/http[s]{0,1}:\/\//, { 'http://' => "https://cdn.ampproject.org/c/", 'https://' => "https://cdn.ampproject.org/c/s/" })
  end
end
