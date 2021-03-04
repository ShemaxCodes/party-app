class PartiesController < ApplicationController

def index 
    @parties = Party.all
end 

def show
    @party = Party.find(params[:id])
end 

def new
    @party = Party.new
end 

def create
    @party = Party.new(party_params)
    byebug
    @party.save
    redirect_to party_path(@party)
end 

def edit 

end 


def update

end 



private

def party_params
    params.permit(:name, :date, :budget, :private)
end 

end