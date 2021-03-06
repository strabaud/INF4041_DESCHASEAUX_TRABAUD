class Book < ActiveRecord::Base
	has_many :book_readers,through: :notes
	has_many :notes

	has_attached_file :cover, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

  	accepts_nested_attributes_for :notes, allow_destroy: true
  	validates :name, :author, presence: true

  	def note
  		notes.map{|note| note.value.to_i}.sum / notes.size unless notes.empty?
  	end

end
