require_relative 'db_base'

class Bookmark < DBBase
  attributes( {:url => :string, :name => :string, :genre => :string} )
end