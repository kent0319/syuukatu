class MicropostsController < ApplicationController
 def index
   @microposts = Micropost.order("company_number")
 end

 def show
 end

 def new
 end

 def edit
 end

 def create
 end

 def update
 end

 def destroy
 end

end
