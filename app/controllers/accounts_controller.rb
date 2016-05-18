class AccountsController < ApplicationController
  before_action :authenticate_user!

  def index
    @accounts = current_user.accounts
    respond_to do |format|
      format.html{}
      format.json{render ({ json: accounts })}
    end
  end

  def show
    begin
    account = current_user.accounts.find(params[:id])
    rescue
      account = {error: "Permission Denied"}
    end
    render({ json: account })
  end
end