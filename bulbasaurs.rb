require 'rubygems'
require 'twilio-ruby'

account_sid = ENV['TWILIO_ACCOUNT_SID']
auth_token = ENV['TWILIO_AUTH_TOKEN']
@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.messages
  .create(
     body: 'Phantom Menace was clearly the best of the prequel trilogy.',
     messaging_service_sid: 'MG605b9aee01f2f791483f59be84e32352',
     to: '+14232234724'
   )

puts message.sid