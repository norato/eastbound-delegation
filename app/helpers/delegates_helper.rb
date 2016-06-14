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
end
