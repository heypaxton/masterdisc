class MailListManager

  def subscribe_user(list_id, user_email)
    begin
      client.lists.subscribe({
        id: list_id, 
        email: { email: user_email}, 
        merge_vars: { FNAME: '', LNAME: ''},
        double_optin: false })
    rescue Gibbon::MailChimpError => e
      e.message
    end
  end

  def list_members(list_id)
    begin
      client.lists.members({ id: list_id }) 
    rescue Gibbon::MailChimpError => e
      e.message
    end
  end
  
  private 
  def client
    begin
      client = Gibbon::API.new("7655e2bc039c989e0d836187811f70fa-us7")
    rescue Gibbon::MailChimpError => e
      e.message
    end
  end
end
