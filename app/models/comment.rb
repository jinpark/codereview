class Comment < ActiveRecord::Base
  attr_accessible :content, :user_id, :code_id, :parent_comment_id
  
  belongs_to :user
  belongs_to :code
  belongs_to :parent_comment, class_name: "Comment"
  has_many :child_comments, class_name: "Comment", foreign_key: :parent_comment_id
  
  
  def self.comments_by_parent(code_id)
    comments = Hash.new{|hash, key| hash[key] = []}
    Comment.where("code_id = ?", code_id).each do |comment|
      comments[comment.parent_comment_id] << comment
    end
    
    comments
  end
  
end
