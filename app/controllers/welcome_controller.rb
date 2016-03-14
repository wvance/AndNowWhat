class WelcomeController < ApplicationController
  before_filter :set_employee

  def index
    # THESE ARE UNIQUE COMPANIES
    @companies = Company.all

    @applications = Application.where(:employee_id => @employee.id)
  end

  private
    def set_employee
      if employee_signed_in?
        @employee = Employee.where(:id => current_employee.id).first
      end
    end
end
