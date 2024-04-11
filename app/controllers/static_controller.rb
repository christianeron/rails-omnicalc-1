class StaticController < ApplicationController
  def square_new
    render({:template => "static/square_new"})
  end
  def square_results
    @number = params.fetch("number").to_f
    @square = @number ** 2
    render({:template => "static/square_results"})
  end

  def square_root_new
    render({:template => "static/square_root_new"})
  end
  def square_root_results
    @user_number = params.fetch("user_number").to_f
    @square_root = @user_number ** 0.5.to_f
    render({:template => "static/square_root_results"})
  end

  def payment_new
    render({:template => "static/payment_new"})
  end
  def payment_results
    @APR = params.fetch("user_apr").to_f
    @num_years = params.fetch("user_years").to_i
    @principal = params.fetch("user_pv").to_f
    monthly_rate = @APR/100/12
    @numerator = monthly_rate * @principal
    @denominator = (1-(1+monthly_rate) ** (-@num_years*12))
    @payment = @numerator / @denominator
    render({:template => "static/payment_results"})
  end

  def random_new
    render({:template => "static/random_new"})
  end
  def random_results
    @user_min = params.fetch("user_min").to_f
    @user_max = params.fetch("user_max").to_f
    @random_result = rand(@user_min...@user_max).to_f
    render({:template => "static/random_results"})
  end
end
