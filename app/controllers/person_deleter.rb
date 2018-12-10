class PersonDeleter < ApplicationController
  def initialize(person)
    @person = person
  end

  def update
    PersonToDeleted.new(@person).call
    redirect_to persons_path
  end
end