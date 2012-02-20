class AdvertisementResponse < ActiveRecord::Base
  set_table_name :advertisements_responses
  belongs_to :response
  belongs_to :advertisement
end
