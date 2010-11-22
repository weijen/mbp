class WaybillsController < ApplicationController
  def index
    @waybills = Waybill.all

    respond_to do |format|
      format.html 
      format.json { render :json => {:status => "OK", :waybill => @waybills.as_json} }
    end
  end

  def show
    @waybill = Waybill.find(params[:id])

    respond_to do |format|
      format.html 
      format.json { render :json => {:status => "OK", :waybill => @waybill.as_json} }
    end
  end

  def new
    @waybill = Waybill.new

    respond_to do |format|
      format.html 
    end
  end

  def edit
    @waybill = Waybill.find(params[:id])
  end

  def create
    @waybill = Waybill.new(params[:waybill])

    respond_to do |format|
      if @waybill.save
        format.html { redirect_to(@waybill, :notice => 'Waybill was successfully created.') }
        format.json { render :json => {:status => "OK", :waybill => @waybill.as_json} }
      else
        format.html { render :action => "new" }
        format.json { render :json => {:status => "ERROR", :messages => @waybill.errors} }
      end
    end
  end

  def update
    @waybill = Waybill.find(params[:id])

    respond_to do |format|
      if @waybill.update_attributes(params[:waybill])
        format.html { redirect_to(@waybill, :notice => 'Waybill was successfully updated.') }
        format.json { render :json => {:status => "OK", :waybill => @waybill.as_json} }
      else
        format.html { render :action => "edit" }
        format.json { render :json => {:status => "ERROR", :waybill => @waybill.errors} }
      end
    end
  end

  def destroy
    @waybill = Waybill.find(params[:id])
    @waybill.destroy

    respond_to do |format|
      format.html { redirect_to(waybills_url) }
      format.json { render :json => {:status => "OK"} }
    end
  end
end
