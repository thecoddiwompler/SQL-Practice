WITH buy AS (
    SELECT stock_name, SUM(price) buy_price
    FROM stocks
    WHERE operation='Buy'
    GROUP BY stock_name
),
sell AS (
    SELECT stock_name, SUM(price) sell_price
    FROM stocks
    WHERE operation='Sell'
    GROUP BY stock_name
)
SELECT buy.stock_name, sell.sell_price-buy.buy_price capital_gain_loss
FROM buy
INNER JOIN sell
ON buy.stock_name=sell.stock_name
