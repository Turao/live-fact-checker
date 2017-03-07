class AdminDashboardController < ApplicationController
  before_action :authenticate_person!
  def index
  end
end
