class PortfoliosController < ApplicationController
before_action :require_login, except: [:index, :show]

  def index
    @portfolios = Portfolio.all
  end

  def show
    @portfolio = Portfolio.find(params[:id])
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    @portfolio.save
    flash.notice = "New portfolio project '#{@portfolio.title}' created!"
    redirect_to portfolio_path(@portfolio)
  end

  def edit
    @portfolio = Portfolio.find(params[:id])
  end

  def update
    @portfolio = Portfolio.find(params[:id])
    @portfolio.update(portfolio_params)
    flash.notice = "Portfolio project '#{@portfolio.title}' updated!"
    redirect_to portfolio_path(@portfolio)
  end

  def destroy
    @portfolio = Portfolio.find(params[:id])
    @portfolio.destroy
    flash.notice = "Portfolio project '#{@portfolio.title}' deleted!"
    redirect_to portfolios_path
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :description, :project_url, :github_url, :image1)
  end

end
