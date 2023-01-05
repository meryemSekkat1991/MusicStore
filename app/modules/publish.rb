module Publish
  attr_writer :notes

  def pub
    notes = [12, 13]
    puts "publish #{notes}"
  end

  def self.included(base)
    puts base
  end
end