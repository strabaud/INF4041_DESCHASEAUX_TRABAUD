class Note < ActiveRecord::Base
  belongs_to :book_reader
  belongs_to :book
end
