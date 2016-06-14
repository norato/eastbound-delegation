module DelegatesHelper

  def pretty_name(delegate = nil)
    d = @delegate || delegate
    "#{d.name_last}, #{d.name_first}"
  end

  def share_me(delegate = nil)
    d = @delegate || delegate
    "Help send Bernie's Nat'l Delegate to convention in Philly:\n#{truncate(pretty_name(d), length: 18, omission: '…')}"
  end

  def share_state(state)
    "Pls RT/share: Adopt a Bernie Delegate from #{state}, make sure we're all represented in Philly"
  end

  def state_url(state)
    url = state_delegates_url(state: state)

    return url if Rails.env.development?

    return url.gsub(/http[s]{0,1}:\/\//, { 'http://' => "https://cdn.ampproject.org/c/", 'https://' => "https://cdn.ampproject.org/c/s/" })
  end
end
