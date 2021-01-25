class AccountController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]
  before_action :current_user_balance, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_account!, except: [:index, :show]
  
  def new
    @account = Account.new
  end

  def show
  end



  def edit
  end
  
  def create
    @account = Account.new(account_params)

    respond_to do |format|
      if @account.save
        format.html { redirect_to @account, notice: 'account was successfully created.' }
        format.json { render :show, status: :created, location: @account }
      else
        format.html { render :new }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end
  

  def update
    respond_to do |format|
      if @account.update(account_params).where(account_id: current_account.id)
        format.html { redirect_to @account, notice: 'account was successfully updated.' }
        format.json { render :show, status: :ok, location: @account }
      else
        format.html { render :edit }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  
  def set_account
    @account = Account.where(account_id: current_account.id).find(params[:id])
    
  end

  
  def account_params
    params.require(:account).permit(:email, :avatar)
  end

  def current_user_balance
    @account_current_balance = Balance.where(account_index: current_account.id.find(params[:id])
  end

end
