class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token # to avoid CSRF errors, need to skip

  def reply # acts as endpoint
  	message_body = params["Body"] # grab params from Twilio's request
  	from_number = params["From"]
  	boot_twilio
  	sms = @client.messages.create( # send to inbound number made by end user
      from: Rails.application.secrets.twilio_from_number,
      to: from_number,
      body: "Hello there, thanks for texting me. Your number is #{from_number}."
  	)
  end

  private

  def boot_twilio
    account_sid = Rails.application.secrets.twilio_account_sid
    auth_token = Rails.application.secrets.twilio_auth_token
    @client = Twilio::REST::Client.new account_sid, auth_token
  end

end
