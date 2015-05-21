class Portfolio < ActiveRecord::Base
  has_attached_file :image1, styles: {medium: "1000x1000>", thumb: "100x100>"}
  validates_attachment_content_type :image1, :content_type => ["image/jpg", "image/jpeg", "image/png"]


end
