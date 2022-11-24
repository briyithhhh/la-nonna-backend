require 'twilio-ruby'

class SendMessages
  def send_message(body)
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']
    @client = Twilio::REST::Client.new(account_sid, auth_token)

    message = @client.messages.create(
      from: ENV['TWILIO_PHONE_NUMBER'],
      to: "+584121688466",
      body: body
    )
    puts message.sid
  end
end