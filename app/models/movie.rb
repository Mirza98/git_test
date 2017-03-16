class Movie < ActiveRecord::Base

    searchkick
	belongs_to :user
	has_many :reviews


    has_attached_file :image, :style => { :medium => "300x300>" }
    #validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
