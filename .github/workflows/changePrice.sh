# declare api_url = "https://api.coingecko.com/api/v3/coins/zoid-pay"
price=$(curl https://api.coingecko.com/api/v3/coins/zoid-pay | jq -r '.market_data.current_price.usd')

sed -i -e "s/10/$price/g" src/App.js