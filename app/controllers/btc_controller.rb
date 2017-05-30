class BtcController < ApplicationController

  def index
    @usdt_btc = Poloniex::Market.by_pair("USDT_BTC").last.to_f * Money.default_bank.get_rate('USD', 'CNY').to_f
    @usdt_eth = Poloniex::Market.by_pair("USDT_ETH").last.to_f * Money.default_bank.get_rate('USD', 'CNY').to_f

    @exchange_rate = Money.default_bank.get_rate('USD', 'CNY').to_f

    client_public = PeatioAPI::Client.new endpoint: 'https://yunbi.com'
    response = client_public.get_public '/api/v2/tickers'
    @btc_yunbi = response["btccny"]["ticker"]["sell"]
    @eth_yunbi = response["ethcny"]["ticker"]["sell"]
  end
end
