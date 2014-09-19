class View < ActiveRecord::Base
  attr_accessible :viewed_id, :viewer_id
end
