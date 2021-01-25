class DashboardController < ApplicationController
    before_action :authenticate_account!
end
