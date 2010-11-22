RestClient.post("http://localhost:3000/waybills.json", {:waybill => {:sender_name => "james", :sender_address => "james_address", :customer_name => "bob", :customer_address => "bob_address", :price => 50}}.to_json, :content_type => :json, :accept => :json)

RestClient.put("http://localhost:3000/waybills/1.json", {:waybill => {:sender_name => "foo", :sender_address => "foo_address", :customer_name => "bar", :customer_address => "bar_address", :price => 80}}.to_json, :content_type => :json, :accept => :json)
