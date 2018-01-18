class MicropostsController < ApplicationController


 def index
   @microposts = Micropost.order(:id)
 end



 def show
   @micropost = Micropost.find(params[:id])
 end



 def new
   @micropost = Micropost.new
 end



 def edit
   @micropost = Micropost.find(params[:id])
 end



 def create
   @micropost = Micropost.new(params[:id])
   @micropost.assign_attributes(params[:micropost])
   if @micropost.save
     redirect_to @micropost, notice: "登録完了しました！"
   else
     render ：:new
   end
 end



 def update
   @micropost = Micropost.find(params[:id])
   @micropost.assign_attributes(params[:micropost])
   if @micropost.save
     redirect_to @micropost, notice: "更新しました！"
   else
     render :edit
   end
 end



 def destroy
   @micropost = Micropost.find(params[:id])
   @micropost.destroy
   redirect_to :microposts, notice:"削除しました！"

 end



end
