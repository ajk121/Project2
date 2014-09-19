class View < ActiveRecord::Base
  attr_accessible :viewed_id, :viewer_id

belongs_to :viewer, class_name: 'User', foreign_key: 'viewer_id'
belongs_to :viewed, class_name: 'User', foreign_key: 'viewed_id'

end
