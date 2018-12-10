class PersonsController < ApplicationController
    def new
    end

    def index
      @persons = Person.all
    end

    def create
        @person = Person.new(params.require(:person).permit(:name, :summary))
 
        @person.save
        redirect_to @person
    end

    def show
      @person = Person.find(params[:id])
    end

private
  def person_params
    params.require(:person).permit(:person, :summary)
  end

end

