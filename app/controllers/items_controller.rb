class ItemsController < ApplicationController
  
  def show
    @item = Item.find(params[:id])
  end
  
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:success] = "製品登録完了！"
      # 保存をここで扱う
      redirect_to @item
    else
      render 'new'
    end
  end

  private

    def item_params
      params.require(:item).permit(:productnamt, :order_number,
                                   :product_date, :delivery_date,
                                   :delivery_number, :quantity,
                                   :sales, :number_of_process,
                                   :process, :remarks)
    end
end
