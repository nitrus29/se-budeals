class DealsController < ApplicationController

def cdeals 
   @deal= Deal.new
   @deals = Deal.find(:all)
 end

 def create
   @deal = Deal.new(params[:deal])
   if @deal.save
      redirect_to cdeals_deal_path
   end
 end

end
