# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  body       :text
#  expires_on :date
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :integer
#  user_id    :integer
#
class Post < ApplicationRecord
  validates(:body,
  {
    :presence => { :message => "can't be blank" },
  })
  belongs_to(:user, class_name: "User", foreign_key: "user_id", primary_key: "id")
  belongs_to(:board, class_name: "Board", foreign_key: "board_id", primary_key: "id")
end
