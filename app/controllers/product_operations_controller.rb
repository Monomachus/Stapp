class ProductOperationsController < ApplicationController
  # GET /product_operations
  # GET /product_operations.xml
  def index
    @product_operations = ProductOperation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @product_operations }
    end
  end

  # GET /product_operations/1
  # GET /product_operations/1.xml
  def show
    @product_operation = ProductOperation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product_operation }
    end
  end

  # GET /product_operations/new
  # GET /product_operations/new.xml
  def new
    @product_operation = ProductOperation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product_operation }
    end
  end

  # GET /product_operations/1/edit
  def edit
    @product_operation = ProductOperation.find(params[:id])
  end

  # POST /product_operations
  # POST /product_operations.xml
  def create
    @product_operation = ProductOperation.new(params[:product_operation])

    respond_to do |format|
      if @product_operation.save
        format.html { redirect_to(@product_operation, :notice => 'Product operation was successfully created.') }
        format.xml  { render :xml => @product_operation, :status => :created, :location => @product_operation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product_operation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /product_operations/1
  # PUT /product_operations/1.xml
  def update
    @product_operation = ProductOperation.find(params[:id])

    respond_to do |format|
      if @product_operation.update_attributes(params[:product_operation])
        format.html { redirect_to(@product_operation, :notice => 'Product operation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product_operation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product_operations/1
  # DELETE /product_operations/1.xml
  def destroy
    @product_operation = ProductOperation.find(params[:id])
    @product_operation.destroy

    respond_to do |format|
      format.html { redirect_to(product_operations_url) }
      format.xml  { head :ok }
    end
  end
end
