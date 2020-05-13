# SMS-Messaging-With-Twilio

Send a text message to +1 (415) 237-9460. Receive an automated reply.

## Getting Started

    bundle install --without production

### Open Secure Tunnel to Localhost

If you do not already have ngrok, please [install](https://ngrok.com/) it.

If you already have ngrok, navigate to directory of where ngrok is stored. You may have to `sudo find / -name "ngrok"` on Terminal to locate it.

    ./ngrok http 3000

Note: If you do not use a tool like ngrok to open a tunnel to your local development environment, then you will need a publicly accessible URL.

### To Start Server

    rails s

Instructions:

    1. Send a text message to +1 (415) 237-9460
    2. Verify you receive an automated reply, "Hello there, thanks for texting me. Your number is [THE_NUMBER_YOU_TEXTED_FROM]."

### Tech Stack

    Ruby 2.3.0
    Rails 4.2
    Twilio API
    ngrok
