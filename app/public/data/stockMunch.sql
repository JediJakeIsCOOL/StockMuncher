/* Database is created
CREATE DATABASE beatthemarket;
*/
/* User table is created */

CREATE TABLE users (
     username VARCHAR UNIQUE NOT NULL PRIMARY KEY,
     password VARCHAR NOT NULL,
     total_money MONEY DEFAULT '10000',
    email VARCHAR NOT NULL
 );

/* Stock table is created */

 CREATE TABLE stocks (
     stock_symbol VARCHAR NOT NULL PRIMARY KEY,
     stock_name VARCHAR,
     sector VARCHAR,
     current_price MONEY,
     current_volume INT,
     stock_price_date TIMESTAMP,
     price_update_date TIMESTAMP

);




/* Stock Purchase table is created */

CREATE TABLE stock_purchase (
    purchase_id SERIAL NOT NULL PRIMARY KEY,
    user_id VARCHAR,
    stock_symbol VARCHAR,
    purchase_price_each MONEY,
    purchase_date timestamp,
    QTY INTEGER

);

/* Stock Sell table is created */

CREATE TABLE stock_sell (
    sell_id SERIAL NOT NULL PRIMARY KEY,
    purchase_id INTEGER REFERENCES stock_purchase(purchase_id),
    sell_price_each MONEY,
    sell_date DATE,
    QTY INTEGER, 
    gainloss MONEY
);

/* Score board table is created */

CREATE TABLE high_score (   
    user_id VARCHAR REFERENCES users(username),
    total_purchase MONEY,
    total_sold MONEY,
    total_held_value MONEY,
    total_gainLoss MONEY,
    _gain REAL
);

/*Stock History Table */

/* CREATE TABLE stock_history (
    id INT NOT NULL PRIMARY KEY,
    stock_id VARCHAR REFERENCES stock(stock_name),
    purchase_date DATE REFERENCES stock_purchase(purchase_date),
    sell_date DATE REFERENCES stock_sell(sell_date),
    purchase_price MONEY REFERENCES stock_purchase(purchase_price_each),
    sell_price MONEY REFERENCES stock_sell(sell_price_each)
);  */

/* Work in progress */
