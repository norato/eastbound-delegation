class Delegate < ApplicationRecord
  has_and_belongs_to_many :slates

  def pretty_name
    "#{name_first} #{name_last}".gsub(/\(.*\)/,'').gsub(/  /, ' ')
  end

  def pretty_slate_select
    "#{name_last}, #{name_first} ".gsub(/\(.*\)/,'').gsub(/  /, ' ') + "(#{id})"
  end
end
