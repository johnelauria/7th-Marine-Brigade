class LanguageAndDialect < ActiveRecord::Base
  attr_accessible :language, :miscellaneou_id, :read, :speaks, :write
  belongs_to :miscellaneou
end
