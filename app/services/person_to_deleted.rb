class PersonToDeleted
  def initialize(person)
    @person = person
  end

  def call 
    return if @person.status == "deleted"
    @person.update_attributes(status: "deleted")
  end
end