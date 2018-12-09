class PersonsDeleter < ApplicationController
  def update
    @person = Account.find_by_param(params[:id]) || not_found!
    PersonToDeleted.new(@person).call
    redirect_to persons_path
  end
end