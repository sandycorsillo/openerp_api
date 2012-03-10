class PartnersController < ApplicationController
  
  # GET /partners
  # GET /partners.json
  def index
    @partner = ResPartner.create(
      name: 'balls'
    )

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @partner }
    end
  end

  # GET /partners/1
  # GET /partners/1.json
  def show
    @partner = ResPartner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @partner }
    end
  end

  # GET /partners/new
  # GET /partners/new.json
  def new
    @partner = Partner.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @partner }
    end
  end

  # GET /partners/1/edit
  def edit
    @partner = Partner.find(params[:id])
  end

  # POST /partners
  # POST /partners.json
  def create
    @partner = ResPartner.create(
      name: params[:name],
      ref: params[:ref],
      supplier: 'true',
      company_id: 3,
      property_account_receivable: 142,
      property_account_payable: 150
    )
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @partner }
      end
  end

  # PUT /partners/1
  # PUT /partners/1.json
  def update
    @partner = Partner.find(params[:id])

    respond_to do |format|
      if @partner.update_attributes(params[:partner])
        format.html { redirect_to @partner, notice: 'Partner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partners/1
  # DELETE /partners/1.json
  def destroy
    @partner = Partner.find(params[:id])
    @partner.destroy

    respond_to do |format|
      format.html { redirect_to partners_url }
      format.json { head :no_content }
    end
  end
end
