require 'action_mailer'
require 'mail'
require 'celluloid'

class Mail::Message
  include ::Celluloid
  alias :_mailluloid_super_deliver :deliver
  def deliver
    async.deliver_then_terminate
  end

  def deliver_then_terminate
    _mailluloid_super_deliver # trigger super `deliver` in background thread
    terminate # terminate the action to prevent memory leaks
  end
end