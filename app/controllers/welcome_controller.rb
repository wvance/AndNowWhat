class WelcomeController < ApplicationController
  def index
    # THESE ARE UNIQUE COMPANIES
    @companies = Company.all
  end
end
