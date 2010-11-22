class Waybill < ActiveRecord::Base
  self.include_root_in_json = false

  validates_presence_of :customer_name, :customer_address
end
