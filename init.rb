if defined?(ActionController::Base) && !ActionController::Base.include?(ExceptionNotifiable)
  require "action_mailer"
  require "exception_notifier"
  require "exception_notifiable"
  require "exception_notifier_helper"

  ActionController::Base.send(:include, ExceptionNotifiable)
end
