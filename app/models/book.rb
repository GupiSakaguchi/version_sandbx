class Book < ApplicationRecord
  has_paper_trail class_name: 'BookVersion'
end
