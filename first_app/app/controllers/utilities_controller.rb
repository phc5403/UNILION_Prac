class UtilitiesController < ApplicationController
  def index
  end

  def pick_lucky_numbers
    # @box = request.remote_ip
    
    # numbers = (1..45).to_a
    # random_numbers = numbers.sample 6
    # @lucky_numbers = random_numbers.sort
    @lucky_numbers = (1..45).to_a.sample(6).sort
  end

  def get_stock_info
  end
  
  def show_stock_info
    inputs = [params['company_code1'], params['company_code2'], params['company_code3']]
    @stocks = StockQuote::Stock.quote(inputs)
    # @c_name = stock.company_name
    # @c_price = stock.latest_price
  end
end
