require 'spec_helper'

describe MailListManager do
  before :each do
    client = Gibbon::API.new
    list_id = "d96a1a03d5"
  end

  it "should subscribe a user" do
    user_email = "gru@despicableme.com"
    list_id = "d96a1a03d5"
    client = MailListManager.new
    client.subscribe_user(list_id, user_email) 
    list = client.list_members(list_id)
    list.should  
  end
end
