class Post < ActiveRecord::Base
	has_many :childs, class_name: "Post", foreign_key: "associated_id"
	belongs_to :parent, class_name: "Post"

	attr_accessible :name, :title, :body
end
