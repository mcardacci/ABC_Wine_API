class Product < ActiveRecord::Base
  def self.search(search)
    where("lower(name) LIKE ?", "%#{search.downcase}%") | where("lower(vineyard) like ?", "%#{search.downcase}%") | where("lower(description) like ?", "%#{search.downcase}%")
  end
end
