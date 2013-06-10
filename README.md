Mailluloid
==========

https://github.com/thailehuy/mailluloid

> gem 'mailluloid'
> bundle

Any help to improve this would be appreciated

Inspired by one of the gem I saw in the last conference: Celluloid, I made the gem Mailluloid (Mail + Celluloid)

How to use:
1. Install the gem <br/>
2. ??? <br/>
3. Profit! <br/>

Then use your mailer as normal. Mailluloid will push all mail sending to background thread, and terminate them after done, so no memory leaks. You now have a non-blocking mailer.

This is useful if you wanna run mailer on Heroku but do not want to pay for a worker just to deliver mail.

Caveats:
1. All mailers exception are in the child thread, so you can't handle them. (but since you are using a background process for mailer, who care?) <br/>
2. Only works with ActionMailer <br/>