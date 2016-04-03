class Listing < ActiveRecord::Base
    if Rails.env.development?
        has_attached_file :image, styles: { medium: "100x100>", thumb: "50x50#" }, default_url: "default.jpg"
    else    
        has_attached_file :image, styles: { medium: "100x100>", thumb: "50x50#" }, default_url: "default.jpg",
            :storage => :dropbox,
            :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
            :path => ":style/:id_:filename"
    end
    
    validates :status, :property_type, :asking_price, presence: true
    validates :asking_price, numericality: { greater_than: 0}
    validates_attachment_presence :image
end
