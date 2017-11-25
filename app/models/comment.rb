class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def erase_empty_user
    self.ingredients = self.ingredients.select {|i| i.name && i.name != '' || i.quantity && i.quantity != ''}
  end

end
