#!/opt/local/bin/ruby
  
require 'rubygems'
require 'rest_client'
require 'json'                                                                                                       

API_KEY = 'fillinyourapikeyhere'

shipment_id = 'H21340867200' 

# get the shipment based on the shipment_id
response = RestClient.get "https://staging.bigmama.ca/api/shipments/#{shipment_id}", {:accept => :json, 'X-SpreeAPIKey' => API_KEY}   
json = JSON.parse(response)    


# update the tracking number for the shipment with shipment_id
RestClient.put "https://staging.bigmama.ca/api/shipments/#{shipment_id}", {:shipment =>{:tracking => '5554444'}}, {:accept => :json, 'X-SpreeAPIKey' => API_KEY} 

                                                    
