# encoding: utf-8

class Post < ActiveRecord::Base
	has_many :posts, class_name: "Post", foreign_key: "postparent_id"
	belongs_to :postparent, class_name: "Post"
	
	attr_accessible :name, :title, :body

	#def to_param
	#	name
	#end

	validates :name,	uniqueness: {message: 'Такое имя уже зарагистрированно'}
	validates :name,	format: {with: /^[а-яёА-ЯЁa-zA-Z0-9_ ]+$/}
end