require 'rails'
require 'ember/auth/module/action_redirectable/source'
require 'ember/auth/module/action_redirectable/rails/version'
require 'ember/auth/module/action_redirectable/rails/engine'

module Ember
  module Auth
    module Module
      module ActionRedirectable
        module Rails
          class Railtie < ::Rails::Railtie
            initializer 'ember-auth.module.action-redirectable.setup-vendor', :group => :all do |app|
              app.assets.append_path \
                File.expand_path('..', ::Ember::Auth::Module::ActionRedirectable::Source.bundled_path)
            end
          end
        end
      end
    end
  end
end
