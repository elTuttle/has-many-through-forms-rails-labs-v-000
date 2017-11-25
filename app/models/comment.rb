class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user
  

  def erase_empty_user
    self.user = self.user.select {|i| i.username && i.username != '' || i.content && i.content != ''}
  end

end
