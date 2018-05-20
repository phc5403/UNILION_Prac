require 'eu_central_bank'
require 'stock_quote'

bank = EuCentralBank.new
bank.update_rates
rate = bank.exchange(100, "USD", "KRW")

print "원하는 NASDAQ 주식의 심볼을 입력하세요 :"
input = gets.chomp

stock = StockQuote::Stock.quote(input)
puts "#{stock.company_name}의 가격은 #{stock.latest_price * rate}"