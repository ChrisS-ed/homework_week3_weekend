require_relative 'db_base'

class Category < DBBase
  attributes( {:url => :string, :name => :string, :genre => :string} )
end