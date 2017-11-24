class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user=(user1)
    user = User.find_or_create_by(user1)
    self.categories << category
  end

end
