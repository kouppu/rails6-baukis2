class Staff::Base < ApplicationController
  private

  def current_staff_mamber
    @current_staff_mamber ||= StaffMember.find_by(id: session[:staff_member_id]) if session[:staff_member_id]
  end

  helper_method :current_staff_mamber
end
