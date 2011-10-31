module Locomotive
  class MyAccountController < BaseController

    sections 'settings', 'account'

    actions :edit, :update

    respond_to :json, :only => :update

    skip_load_and_authorize_resource

    def update
      update! { edit_my_account_url }
    end

    protected

    def resource
      @account = current_account
    end

    def begin_of_association_chain; nil; end # not related directly to current_site

  end
end
